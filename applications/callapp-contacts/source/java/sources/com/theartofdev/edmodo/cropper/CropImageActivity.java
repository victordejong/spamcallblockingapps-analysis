package com.theartofdev.edmodo.cropper;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.C0790b;
import com.theartofdev.edmodo.cropper.C17191g;
import com.theartofdev.edmodo.cropper.CropImage;
import com.theartofdev.edmodo.cropper.CropImageView;
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageActivity.class */
public class CropImageActivity extends AppCompatActivity implements CropImageView.AbstractC17169d, CropImageView.AbstractC17173h {

    /* renamed from: a */
    private CropImageView f60747a;

    /* renamed from: b */
    private Uri f60748b;

    /* renamed from: c */
    private CropImageOptions f60749c;

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r0.equals(android.net.Uri.EMPTY) != false) goto L21;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.net.Uri m5821a() {
        /*
            r5 = this;
            r0 = r5
            com.theartofdev.edmodo.cropper.CropImageOptions r0 = r0.f60749c
            android.net.Uri r0 = r0.outputUri
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L18
            r0 = r6
            r7 = r0
            r0 = r6
            android.net.Uri r1 = android.net.Uri.EMPTY
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4f
        L18:
            r0 = r5
            com.theartofdev.edmodo.cropper.CropImageOptions r0 = r0.f60749c     // Catch: java.io.IOException -> L51
            android.graphics.Bitmap$CompressFormat r0 = r0.outputCompressFormat     // Catch: java.io.IOException -> L51
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch: java.io.IOException -> L51
            if (r0 != r1) goto L2b
            java.lang.String r0 = ".jpg"
            r7 = r0
            goto L41
        L2b:
            r0 = r5
            com.theartofdev.edmodo.cropper.CropImageOptions r0 = r0.f60749c     // Catch: java.io.IOException -> L51
            android.graphics.Bitmap$CompressFormat r0 = r0.outputCompressFormat     // Catch: java.io.IOException -> L51
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.io.IOException -> L51
            if (r0 != r1) goto L3e
            java.lang.String r0 = ".png"
            r7 = r0
            goto L41
        L3e:
            java.lang.String r0 = ".webp"
            r7 = r0
        L41:
            java.lang.String r0 = "cropped"
            r1 = r7
            r2 = r5
            java.io.File r2 = r2.getCacheDir()     // Catch: java.io.IOException -> L51
            java.io.File r0 = java.io.File.createTempFile(r0, r1, r2)     // Catch: java.io.IOException -> L51
            android.net.Uri r0 = android.net.Uri.fromFile(r0)     // Catch: java.io.IOException -> L51
            r7 = r0
        L4f:
            r0 = r7
            return r0
        L51:
            r7 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            java.lang.String r2 = "Failed to create temp file for output image"
            r3 = r7
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.CropImageActivity.m5821a():android.net.Uri");
    }

    /* renamed from: a */
    private void m5820a(int i) {
        this.f60747a.m5813a(i);
    }

    /* renamed from: a */
    private void m5819a(Uri uri, Exception exc, int i) {
        setResult(exc == null ? -1 : 204, m5816b(uri, exc, i));
        finish();
    }

    /* renamed from: a */
    private static void m5818a(Menu menu, int i, int i2) {
        Drawable icon;
        MenuItem findItem = menu.findItem(i);
        if (findItem == null || (icon = findItem.getIcon()) == null) {
            return;
        }
        try {
            icon.mutate();
            icon.setColorFilter(i2, PorterDuff.Mode.SRC_ATOP);
            findItem.setIcon(icon);
        } catch (Exception e) {
            Log.w("AIC", "Failed to update menu item color", e);
        }
    }

    /* renamed from: b */
    private Intent m5816b(Uri uri, Exception exc, int i) {
        CropImage.ActivityResult activityResult = new CropImage.ActivityResult(this.f60747a.f60769h, uri, exc, this.f60747a.m5802c(), this.f60747a.m5804b(), this.f60747a.f60764c, this.f60747a.m5815a(), i);
        Intent intent = new Intent();
        intent.putExtras(getIntent());
        intent.putExtra("CROP_IMAGE_EXTRA_RESULT", activityResult);
        return intent;
    }

    /* renamed from: b */
    private void m5817b() {
        setResult(0);
        finish();
    }

    @Override // com.theartofdev.edmodo.cropper.CropImageView.AbstractC17169d
    /* renamed from: a */
    public final void mo5797a(CropImageView.C17166a c17166a) {
        m5819a(c17166a.getUri(), c17166a.getError(), c17166a.getSampleSize());
    }

    @Override // com.theartofdev.edmodo.cropper.CropImageView.AbstractC17173h
    /* renamed from: a */
    public final void mo5796a(Exception exc) {
        if (exc != null) {
            m5819a((Uri) null, exc, 1);
            return;
        }
        if (this.f60749c.initialCropWindowRectangle != null) {
            this.f60747a.setCropRect(this.f60749c.initialCropWindowRectangle);
        }
        if (this.f60749c.initialRotation < 0) {
            return;
        }
        this.f60747a.setRotatedDegrees(this.f60749c.initialRotation);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 200) {
            if (i2 == 0) {
                m5817b();
            }
            if (i2 != -1) {
                return;
            }
            boolean z = true;
            if (intent != null) {
                z = true;
                if (intent.getData() != null) {
                    String action = intent.getAction();
                    z = action != null && action.equals("android.media.action.IMAGE_CAPTURE");
                }
            }
            Uri m5823b = (z || intent.getData() == null) ? CropImage.m5823b(this) : intent.getData();
            this.f60748b = m5823b;
            if (CropImage.m5826a(this, m5823b)) {
                requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 201);
            } else {
                this.f60747a.setImageUriAsync(this.f60748b);
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        m5817b();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C17191g.C17193b.crop_image_activity);
        this.f60747a = (CropImageView) findViewById(C17191g.C17192a.cropImageView);
        Bundle bundleExtra = getIntent().getBundleExtra("CROP_IMAGE_EXTRA_BUNDLE");
        this.f60748b = (Uri) bundleExtra.getParcelable("CROP_IMAGE_EXTRA_SOURCE");
        this.f60749c = (CropImageOptions) bundleExtra.getParcelable("CROP_IMAGE_EXTRA_OPTIONS");
        if (bundle == null) {
            Uri uri = this.f60748b;
            if (uri == null || uri.equals(Uri.EMPTY)) {
                if (CropImage.m5828a((Context) this)) {
                    requestPermissions(new String[]{"android.permission.CAMERA"}, 2011);
                } else {
                    CropImage.m5829a((Activity) this);
                }
            } else if (CropImage.m5826a(this, this.f60748b)) {
                requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 201);
            } else {
                this.f60747a.setImageUriAsync(this.f60748b);
            }
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            CropImageOptions cropImageOptions = this.f60749c;
            supportActionBar.mo46238a((cropImageOptions == null || cropImageOptions.activityTitle == null || this.f60749c.activityTitle.length() <= 0) ? getResources().getString(C17191g.C17195d.crop_image_activity_title) : this.f60749c.activityTitle);
            supportActionBar.mo46237a(true);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C17191g.C17194c.crop_image_menu, menu);
        if (!this.f60749c.allowRotation) {
            menu.removeItem(C17191g.C17192a.crop_image_menu_rotate_left);
            menu.removeItem(C17191g.C17192a.crop_image_menu_rotate_right);
        } else if (this.f60749c.allowCounterRotation) {
            menu.findItem(C17191g.C17192a.crop_image_menu_rotate_left).setVisible(true);
        }
        if (!this.f60749c.allowFlipping) {
            menu.removeItem(C17191g.C17192a.crop_image_menu_flip);
        }
        if (this.f60749c.cropMenuCropButtonTitle != null) {
            menu.findItem(C17191g.C17192a.crop_image_menu_crop).setTitle(this.f60749c.cropMenuCropButtonTitle);
        }
        Drawable drawable = null;
        Drawable drawable2 = null;
        try {
            if (this.f60749c.cropMenuCropButtonIcon != 0) {
                drawable = C0790b.m44502a(this, this.f60749c.cropMenuCropButtonIcon);
                drawable2 = drawable;
                menu.findItem(C17191g.C17192a.crop_image_menu_crop).setIcon(drawable);
            }
        } catch (Exception e) {
            Log.w("AIC", "Failed to read menu crop drawable", e);
            drawable = drawable2;
        }
        if (this.f60749c.activityMenuIconColor != 0) {
            m5818a(menu, C17191g.C17192a.crop_image_menu_rotate_left, this.f60749c.activityMenuIconColor);
            m5818a(menu, C17191g.C17192a.crop_image_menu_rotate_right, this.f60749c.activityMenuIconColor);
            m5818a(menu, C17191g.C17192a.crop_image_menu_flip, this.f60749c.activityMenuIconColor);
            if (drawable == null) {
                return true;
            }
            m5818a(menu, C17191g.C17192a.crop_image_menu_crop, this.f60749c.activityMenuIconColor);
            return true;
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == C17191g.C17192a.crop_image_menu_crop) {
            if (this.f60749c.noOutputImage) {
                m5819a((Uri) null, (Exception) null, 1);
                return true;
            }
            this.f60747a.m5809a(m5821a(), this.f60749c.outputCompressFormat, this.f60749c.outputCompressQuality, this.f60749c.outputRequestWidth, this.f60749c.outputRequestHeight, this.f60749c.outputRequestSizeOptions);
            return true;
        } else if (menuItem.getItemId() == C17191g.C17192a.crop_image_menu_rotate_left) {
            m5820a(-this.f60749c.rotationDegrees);
            return true;
        } else if (menuItem.getItemId() == C17191g.C17192a.crop_image_menu_rotate_right) {
            m5820a(this.f60749c.rotationDegrees);
            return true;
        } else if (menuItem.getItemId() == C17191g.C17192a.crop_image_menu_flip_horizontally) {
            CropImageView cropImageView = this.f60747a;
            cropImageView.f60765d = !cropImageView.f60765d;
            cropImageView.m5814a(cropImageView.getWidth(), cropImageView.getHeight(), true, false);
            return true;
        } else if (menuItem.getItemId() == C17191g.C17192a.crop_image_menu_flip_vertically) {
            CropImageView cropImageView2 = this.f60747a;
            cropImageView2.f60766e = !cropImageView2.f60766e;
            cropImageView2.m5814a(cropImageView2.getWidth(), cropImageView2.getHeight(), true, false);
            return true;
        } else if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            m5817b();
            return true;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 201) {
            Uri uri = this.f60748b;
            if (uri == null || iArr.length <= 0 || iArr[0] != 0) {
                Toast.makeText(this, C17191g.C17195d.crop_image_activity_no_permissions, 1).show();
                m5817b();
            } else {
                this.f60747a.setImageUriAsync(uri);
            }
        }
        if (i == 2011) {
            CropImage.m5829a((Activity) this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f60747a.setOnSetImageUriCompleteListener(this);
        this.f60747a.setOnCropImageCompleteListener(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f60747a.setOnSetImageUriCompleteListener(null);
        this.f60747a.setOnCropImageCompleteListener(null);
    }
}
