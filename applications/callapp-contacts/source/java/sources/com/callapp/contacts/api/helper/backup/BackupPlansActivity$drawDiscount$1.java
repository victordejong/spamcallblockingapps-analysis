package com.callapp.contacts.api.helper.backup;

import android.graphics.Bitmap;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bumptech.glide.p112e.AbstractFutureC3598c;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.planPage.JsonPlanPageConfig;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import org.apache.commons.lang3.StringUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity$drawDiscount$1.class */
public final class BackupPlansActivity$drawDiscount$1 implements Runnable {

    /* renamed from: a */
    final /* synthetic */ BackupPlansActivity f24702a;

    /* renamed from: b */
    final /* synthetic */ String f24703b;

    /* renamed from: c */
    final /* synthetic */ int f24704c;

    /* renamed from: d */
    final /* synthetic */ ViewParent f24705d;

    public BackupPlansActivity$drawDiscount$1(BackupPlansActivity backupPlansActivity, String str, int i, ViewParent viewParent) {
        this.f24702a = backupPlansActivity;
        this.f24703b = str;
        this.f24704c = i;
        this.f24705d = viewParent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractFutureC3598c abstractFutureC3598c;
        Bitmap bitmap;
        this.f24702a.f24694o = GlideUtils.m27037a(this.f24703b);
        abstractFutureC3598c = this.f24702a.f24694o;
        if (abstractFutureC3598c != null) {
            try {
                this.f24702a.f24695p = (Bitmap) abstractFutureC3598c.get();
                bitmap = this.f24702a.f24695p;
                if (bitmap == null) {
                    return;
                }
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$drawDiscount$1$$special$$inlined$let$lambda$2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Bitmap bitmap2;
                        JsonPlanPageConfig jsonPlanPageConfig;
                        bitmap2 = BackupPlansActivity$drawDiscount$1.this.f24702a.f24695p;
                        Bitmap m27534a = ImageUtils.m27534a(bitmap2, StringUtils.SPACE + BackupPlansActivity$drawDiscount$1.this.f24704c + '%');
                        C18524p.m3843b(m27534a, "ImageUtils.drawTextToBit…getBitmap, \" $discount%\")");
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
                        jsonPlanPageConfig = BackupPlansActivity$drawDiscount$1.this.f24702a.f24685e;
                        C18524p.m3851a(jsonPlanPageConfig);
                        layoutParams.addRule(C18524p.m3850a((Object) jsonPlanPageConfig.getBadgePosition(), (Object) "RIGHT") ? 11 : 9);
                        ImageView imageView = new ImageView(CallAppApplication.get());
                        imageView.setImageBitmap(m27534a);
                        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                        ((RelativeLayout) BackupPlansActivity$drawDiscount$1.this.f24705d).addView(imageView, layoutParams);
                    }
                });
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (ExecutionException e2) {
                e2.printStackTrace();
            }
        }
    }
}
