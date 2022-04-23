package com.callapp.contacts.api.helper.backup;

import android.graphics.Bitmap;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bumptech.glide.e.c;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.planPage.JsonPlanPageConfig;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1.class */
public final class BackupPlansActivity$drawDiscount$1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BackupPlansActivity f14052a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f14053b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f14054c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ViewParent f14055d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BackupPlansActivity$drawDiscount$1(BackupPlansActivity backupPlansActivity, String str, int i, ViewParent viewParent) {
        this.f14052a = backupPlansActivity;
        this.f14053b = str;
        this.f14054c = i;
        this.f14055d = viewParent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar;
        Bitmap bitmap;
        this.f14052a.o = GlideUtils.a(this.f14053b);
        cVar = this.f14052a.o;
        if (cVar != null) {
            try {
                this.f14052a.p = (Bitmap) cVar.get();
                bitmap = this.f14052a.p;
                if (bitmap != null) {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$drawDiscount$1$$special$$inlined$let$lambda$2
                        @Override // java.lang.Runnable
                        public final void run() {
                            Bitmap bitmap2;
                            JsonPlanPageConfig jsonPlanPageConfig;
                            bitmap2 = BackupPlansActivity$drawDiscount$1.this.f14052a.p;
                            Bitmap a2 = ImageUtils.a(bitmap2, StringUtils.SPACE + BackupPlansActivity$drawDiscount$1.this.f14054c + '%');
                            p.b(a2, "ImageUtils.drawTextToBit…getBitmap, \" $discount%\")");
                            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
                            jsonPlanPageConfig = BackupPlansActivity$drawDiscount$1.this.f14052a.e;
                            p.a(jsonPlanPageConfig);
                            layoutParams.addRule(p.a((Object) jsonPlanPageConfig.getBadgePosition(), (Object) "RIGHT") ? 11 : 9);
                            ImageView imageView = new ImageView(CallAppApplication.get());
                            imageView.setImageBitmap(a2);
                            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                            ((RelativeLayout) BackupPlansActivity$drawDiscount$1.this.f14055d).addView(imageView, layoutParams);
                        }
                    });
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (ExecutionException e2) {
                e2.printStackTrace();
            }
        }
    }
}
