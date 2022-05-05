package zendesk.commonui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.squareup.picasso.Picasso;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/AvatarView.class */
public class AvatarView extends FrameLayout {
    private final int avatarSize;
    private final int[] colorPalette;
    private final ImageView imageView;
    private final int outlineColor;
    private final int outlineSize;
    private final Picasso picasso;
    private final TextView textView;

    public AvatarView(@NonNull Context context) {
        this(context, null, 0);
    }

    public AvatarView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AvatarView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        inflate(context, C2633R.C2637layout.zui_view_avatar, this);
        Resources resources = getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C2633R.dimen.zui_avatar_view_outline);
        int themeAttributeToColor = UiUtils.themeAttributeToColor(C2633R.C2634attr.colorPrimary, context, C2633R.color.zui_color_primary);
        this.imageView = (ImageView) findViewById(C2633R.C2636id.zui_avatar_image);
        this.textView = (TextView) findViewById(C2633R.C2636id.zui_avatar_letter);
        this.picasso = Picasso.with(context);
        this.avatarSize = resources.getDimensionPixelSize(C2633R.dimen.zui_avatar_view_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2633R.styleable.AvatarView);
        this.colorPalette = resources.getIntArray(obtainStyledAttributes.getResourceId(C2633R.styleable.AvatarView_colorPalette, C2633R.array.zui_avatar_view__background_color_palette));
        this.outlineSize = obtainStyledAttributes.getDimensionPixelSize(C2633R.styleable.AvatarView_outlineSize, dimensionPixelOffset);
        this.outlineColor = obtainStyledAttributes.getColor(C2633R.styleable.AvatarView_outlineColor, themeAttributeToColor);
        obtainStyledAttributes.recycle();
    }

    private Drawable generateBackground(@NonNull Object obj) {
        int i = this.colorPalette[Math.abs(obj.hashCode() % this.colorPalette.length)];
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(i);
        if (this.outlineSize <= 0) {
            return shapeDrawable;
        }
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable2.getPaint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
        paint.setColor(this.outlineColor);
        paint.setStrokeWidth(this.outlineSize);
        return new LayerDrawable(new Drawable[]{shapeDrawable, new InsetDrawable((Drawable) shapeDrawable2, this.outlineSize / 2)});
    }

    public void showDefault(@DrawableRes int i, @NonNull Object obj) {
        setBackground(generateBackground(obj));
        this.imageView.setImageResource(i);
        this.textView.setVisibility(8);
        this.imageView.setVisibility(0);
    }

    public void showImage(@NonNull String str) {
        if (this.avatarSize - this.outlineSize > 0) {
            setBackground(null);
            this.imageView.setImageResource(C2633R.color.zui_color_transparent);
            this.imageView.setVisibility(0);
            this.textView.setVisibility(8);
            this.picasso.load(str).resize(this.avatarSize - this.outlineSize, this.avatarSize - this.outlineSize).centerCrop().noPlaceholder().transform(PicassoTransformations.getRoundWithBorderTransformation(this.avatarSize, this.outlineColor, this.outlineSize)).into(this.imageView);
        }
    }

    public void showLetter(@NonNull String str, @NonNull Object obj) {
        setBackground(generateBackground(obj));
        this.textView.setText(str);
        this.textView.setVisibility(0);
        this.imageView.setVisibility(8);
    }
}
