package com.lb.video_trimmer_library.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import com.explorestack.iab.mraid.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.lb.video_trimmer_library.b.a;
import com.lb.video_trimmer_library.b.d;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018��2\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0015J(\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0014J$\u0010\u001d\u001a\u00020\u00122\u001a\u0010\u001e\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nj\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b`\fH\u0002J\u000e\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0010R(\u0010\t\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nj\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b`\fX\u0082\u0004¢\u0006\b\n��\u0012\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��¨\u0006!"}, d2 = {"Lcom/lb/video_trimmer_library/view/TimeLineView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "bitmapList", "Ljava/util/ArrayList;", "Landroid/graphics/Bitmap;", "Lkotlin/collections/ArrayList;", "bitmapList$annotations", "()V", "videoUri", "Landroid/net/Uri;", "getBitmap", "", "viewWidth", "viewHeight", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onSizeChanged", "w", h.f19142a, "oldW", "oldH", "returnBitmaps", "thumbnailList", "setVideo", "data", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/view/TimeLineView.class */
public class TimeLineView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Uri f33647a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<Bitmap> f33648b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/lb/video_trimmer_library/view/TimeLineView$getBitmap$1", "Lcom/lb/video_trimmer_library/utils/BackgroundExecutor$Task;", "execute", "", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/view/TimeLineView$a.class */
    public static final class a extends a.AbstractRunnableC0542a {
        final /* synthetic */ int h;
        final /* synthetic */ int i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i, int i2, String str, long j, String str2) {
            super(str, j, str2);
            this.h = i;
            this.i = i2;
        }

        @Override // com.lb.video_trimmer_library.b.a.AbstractRunnableC0542a
        public final void a() {
            Bitmap bitmap;
            try {
                ArrayList arrayList = new ArrayList();
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(TimeLineView.this.getContext(), TimeLineView.this.f33647a);
                String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
                p.a((Object) extractMetadata, "mediaMetadataRetriever.e…er.METADATA_KEY_DURATION)");
                long parseLong = Long.parseLong(extractMetadata);
                int i = this.h;
                long j = (parseLong * 1000) / i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (Build.VERSION.SDK_INT >= 27) {
                        long j2 = i2;
                        int i3 = this.i;
                        bitmap = mediaMetadataRetriever.getScaledFrameAtTime(j2 * j, 2, i3, i3);
                    } else {
                        bitmap = mediaMetadataRetriever.getFrameAtTime(i2 * j, 2);
                    }
                    Bitmap bitmap2 = bitmap;
                    if (bitmap != null) {
                        int i4 = this.i;
                        bitmap2 = ThumbnailUtils.extractThumbnail(bitmap, i4, i4);
                    }
                    arrayList.add(bitmap2);
                }
                mediaMetadataRetriever.release();
                TimeLineView.a(TimeLineView.this, arrayList);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/view/TimeLineView$b.class */
    public static final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArrayList f33651b;

        b(ArrayList arrayList) {
            this.f33651b = arrayList;
        }

        @Override // java.lang.Runnable
        public final void run() {
            TimeLineView.this.f33648b.clear();
            TimeLineView.this.f33648b.addAll(this.f33651b);
            TimeLineView.this.invalidate();
        }
    }

    public TimeLineView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimeLineView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        p.c(context, "context");
        this.f33648b = new ArrayList<>();
    }

    public /* synthetic */ TimeLineView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public static final /* synthetic */ void a(TimeLineView timeLineView, ArrayList arrayList) {
        d dVar = d.f33635b;
        b task = new b(arrayList);
        p.c("", "id");
        p.c(task, "task");
        if (p.a((Object) "", (Object) "")) {
            d.f33634a.postDelayed(task, 0L);
            return;
        }
        d.f33634a.postAtTime(task, d.a(""), SystemClock.uptimeMillis() + 0);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        p.c(canvas, "canvas");
        super.onDraw(canvas);
        canvas.save();
        int height = getHeight();
        Iterator<Bitmap> it2 = this.f33648b.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Bitmap next = it2.next();
            if (next != null) {
                canvas.drawBitmap(next, i, BitmapDescriptorFactory.HUE_RED, (Paint) null);
            }
            i += height;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int ceil = (int) Math.ceil(i / i2);
            this.f33648b.clear();
            if (isInEditMode()) {
                Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), 17301651);
                if (decodeResource == null) {
                    p.a();
                }
                Bitmap extractThumbnail = ThumbnailUtils.extractThumbnail(decodeResource, i2, i2);
                for (int i5 = 0; i5 < ceil; i5++) {
                    this.f33648b.add(extractThumbnail);
                }
                return;
            }
            com.lb.video_trimmer_library.b.a.f33621a.a("");
            com.lb.video_trimmer_library.b.a.f33621a.a(new a(ceil, i2, "", 0L, ""));
        }
    }

    public final void setVideo(Uri data) {
        p.c(data, "data");
        this.f33647a = data;
    }
}
