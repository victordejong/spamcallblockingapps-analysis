package zendesk.belvedere;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.AttrRes;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.design.widget.FloatingActionButton;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.graphics.drawable.DrawableCompat;
import android.support.p001v4.util.Pair;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;
import zendesk.belvedere.p041ui.C2612R;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/FloatingActionMenu.class */
public class FloatingActionMenu extends LinearLayout implements View.OnClickListener {
    private static final float ANIMATION_ROTATION_INITIAL_ANGLE = 0.0f;
    private int animationDelaySubsequentItem;
    private int animationDuration;
    private int animationRotationAngle;
    private FloatingActionButton fab;
    private boolean isExpanded;
    private LayoutInflater layoutInflater;
    private List<Pair<FloatingActionButton, View.OnClickListener>> menuItems;
    private AnimationListenerAdapter setGone = new AnimationListenerAdapter() { // from class: zendesk.belvedere.FloatingActionMenu.2
        @Override // zendesk.belvedere.FloatingActionMenu.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            for (Pair pair : FloatingActionMenu.this.menuItems) {
                ((FloatingActionButton) pair.first).setVisibility(8);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/FloatingActionMenu$AnimationListenerAdapter.class */
    public abstract class AnimationListenerAdapter implements Animation.AnimationListener {
        private AnimationListenerAdapter() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public FloatingActionMenu(@NonNull Context context) {
        super(context);
        initView(context);
    }

    public FloatingActionMenu(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        initView(context);
    }

    public FloatingActionMenu(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        initView(context);
    }

    @RequiresApi(api = 21)
    public FloatingActionMenu(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        initView(context);
    }

    private Drawable getTintedDrawable(@DrawableRes int i, @ColorRes int i2) {
        Context context = getContext();
        Drawable wrap = DrawableCompat.wrap(ContextCompat.getDrawable(context, i));
        DrawableCompat.setTint(wrap, ContextCompat.getColor(context, i2));
        return wrap;
    }

    private void initView(@NonNull Context context) {
        inflate(context, C2612R.C2616layout.belvedere_floating_action_menu, this);
        if (!isInEditMode()) {
            setOrientation(1);
            setOnClickListener(this);
            this.fab = (FloatingActionButton) findViewById(C2612R.C2615id.floating_action_menu_fab);
            this.layoutInflater = LayoutInflater.from(context);
            this.menuItems = new ArrayList();
            Resources resources = getResources();
            this.animationDuration = resources.getInteger(C2612R.integer.belvedere_fam_animation_duration);
            this.animationRotationAngle = resources.getInteger(C2612R.integer.belvedere_fam_animation_rotation_angle);
            this.animationDelaySubsequentItem = getResources().getInteger(C2612R.integer.belvedere_fam_animation_delay_subsequent_item);
        }
    }

    private void rotate(boolean z) {
        ViewCompat.animate(this.fab).rotation(z ? this.animationRotationAngle : 0.0f).setDuration(this.animationDuration).start();
    }

    private void showMenuItems(boolean z) {
        long j = 0;
        if (z) {
            for (Pair<FloatingActionButton, View.OnClickListener> pair : this.menuItems) {
                Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), C2612R.anim.belvedere_show_menu_item);
                loadAnimation.setRepeatMode(2);
                loadAnimation.setStartOffset(j);
                pair.first.setVisibility(0);
                pair.first.startAnimation(loadAnimation);
                j += this.animationDelaySubsequentItem;
            }
            return;
        }
        Animation animation = null;
        for (int size = this.menuItems.size() - 1; size >= 0; size--) {
            final Pair<FloatingActionButton, View.OnClickListener> pair2 = this.menuItems.get(size);
            animation = AnimationUtils.loadAnimation(getContext(), C2612R.anim.belvedere_hide_menu_item);
            animation.setRepeatMode(2);
            animation.setStartOffset(j);
            animation.setAnimationListener(new AnimationListenerAdapter() { // from class: zendesk.belvedere.FloatingActionMenu.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // zendesk.belvedere.FloatingActionMenu.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation2) {
                    ((FloatingActionButton) pair2.first).setVisibility(4);
                }
            });
            pair2.first.startAnimation(animation);
            j += this.animationDelaySubsequentItem;
        }
        if (animation != null) {
            animation.setAnimationListener(this.setGone);
        }
    }

    public void addMenuItem(@DrawableRes int i, @IdRes int i2, @StringRes int i3, @NonNull View.OnClickListener onClickListener) {
        FloatingActionButton floatingActionButton = (FloatingActionButton) this.layoutInflater.inflate(C2612R.C2616layout.belvedere_floating_action_menu_item, (ViewGroup) this, false);
        floatingActionButton.setOnClickListener(onClickListener);
        floatingActionButton.setImageDrawable(getTintedDrawable(i, C2612R.color.belvedere_floating_action_menu_item_icon_color));
        floatingActionButton.setId(i2);
        floatingActionButton.setContentDescription(getResources().getString(i3));
        this.menuItems.add(Pair.create(floatingActionButton, onClickListener));
        if (this.menuItems.size() == 1) {
            this.fab.setImageDrawable(getTintedDrawable(i, C2612R.color.belvedere_floating_action_menu_icon_color));
            this.fab.setContentDescription(getResources().getString(i3));
        } else if (this.menuItems.size() == 2) {
            addView(this.menuItems.get(0).first, 0);
            addView(floatingActionButton, 0);
            this.fab.setImageDrawable(getTintedDrawable(C2612R.C2614drawable.belvedere_fam_icon_add, C2612R.color.belvedere_floating_action_menu_icon_color));
            this.fab.setContentDescription(getResources().getString(C2612R.string.belvedere_fam_desc_expand_fam));
        } else {
            addView(floatingActionButton, 0);
        }
        setVisibility(0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.menuItems.size() == 1) {
            Pair<FloatingActionButton, View.OnClickListener> pair = this.menuItems.get(0);
            pair.second.onClick(pair.first);
            return;
        }
        this.isExpanded = !this.isExpanded;
        showMenuItems(this.isExpanded);
        rotate(this.isExpanded);
        if (this.isExpanded) {
            this.fab.setContentDescription(getResources().getString(C2612R.string.belvedere_fam_desc_collapse_fam));
        } else {
            this.fab.setContentDescription(getResources().getString(C2612R.string.belvedere_fam_desc_expand_fam));
        }
    }
}
