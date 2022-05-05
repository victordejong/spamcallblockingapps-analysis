package com.flurry.sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.view.View;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.media2.session.SessionCommand;
import androidx.recyclerview.widget.FastScroller;
import com.flurry.sdk.C3363jx;
import com.flurry.sdk.C3368jz;
import java.io.File;
/* renamed from: com.flurry.sdk.c */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/c.class */
public class C2900c {

    /* renamed from: a */
    public static final String f4359a = "c";

    /* renamed from: a */
    public static Bitmap m33450a(String str) {
        Bitmap bitmap;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(str);
            bitmap = mediaMetadataRetriever.getFrameAtTime(TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
            try {
                mediaMetadataRetriever.release();
            } catch (RuntimeException e) {
            }
        } catch (RuntimeException e2) {
            try {
                mediaMetadataRetriever.release();
            } catch (RuntimeException e3) {
            }
            bitmap = null;
        } catch (Throwable th) {
            try {
                mediaMetadataRetriever.release();
            } catch (RuntimeException e4) {
            }
            throw th;
        }
        if (bitmap == null) {
            return null;
        }
        return Bitmap.createScaledBitmap(bitmap, FastScroller.HIDE_DELAY_AFTER_DRAGGING_MS, 700, true);
    }

    /* renamed from: a */
    public static void m33452a(final View view, int i, String str) {
        C2806af afVar = C3484p.m32358a().f6006h;
        File d = C2806af.m33633d(str);
        File file = d;
        if (d == null) {
            file = C2806af.m33656a(i, str);
        }
        if (file == null) {
            String str2 = f4359a;
            C3356jq.m32615a(3, str2, "Cached asset not available for image:" + str);
            C3363jx jxVar = new C3363jx();
            jxVar.f5766g = str;
            jxVar.f5941u = SessionCommand.COMMAND_CODE_SESSION_FAST_FORWARD;
            jxVar.f5767h = C3368jz.EnumC3371a.kGet;
            jxVar.f5754d = new C2987do();
            jxVar.f5751a = new C3363jx.AbstractC3365a<Void, Bitmap>(afVar, str, view) { // from class: com.flurry.sdk.c.1

                /* renamed from: b */
                public final /* synthetic */ String f4360b;

                /* renamed from: c */
                public final /* synthetic */ View f4361c;

                {
                    this.f4360b = str;
                    this.f4361c = view;
                }

                @Override // com.flurry.sdk.C3363jx.AbstractC3365a
                /* renamed from: a */
                public final /* synthetic */ void mo32321a(C3363jx<Void, Bitmap> jxVar2, Bitmap bitmap) {
                    final Bitmap bitmap2 = bitmap;
                    String str3 = C2900c.f4359a;
                    C3356jq.m32615a(3, str3, "Image request - HTTP status code is:" + jxVar2.f5776q);
                    if (jxVar2.m32580b()) {
                        C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.c.1.1
                            @Override // com.flurry.sdk.AbstractRunnableC3447lc
                            /* renamed from: a */
                            public final void mo32300a() {
                                C2806af.m33654a(bitmap2, C29011.this.f4360b);
                                C2900c.m33451a(C29011.this.f4361c, new BitmapDrawable(bitmap2));
                            }
                        });
                    }
                }
            };
            C3323iz.m32690a().m32623a((Object) str, (String) jxVar);
            return;
        }
        String str3 = f4359a;
        C3356jq.m32615a(3, str3, "Cached asset present for image:" + str);
        final String absolutePath = file.getAbsolutePath();
        C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.c.2
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                C2900c.m33451a(view, new BitmapDrawable(BitmapFactory.decodeFile(absolutePath)));
            }
        });
    }

    /* renamed from: a */
    public static /* synthetic */ void m33451a(View view, Drawable drawable) {
        if (C3017ed.m33282a(16)) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }
}
