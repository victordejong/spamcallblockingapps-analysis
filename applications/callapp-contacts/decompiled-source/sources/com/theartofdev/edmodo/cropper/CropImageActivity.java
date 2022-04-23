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
import androidx.core.content.b;
import com.explorestack.protobuf.openrtb.LossReason;
import com.theartofdev.edmodo.cropper.CropImage;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.g;
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageActivity.class */
public class CropImageActivity extends AppCompatActivity implements CropImageView.d, CropImageView.h {

    /* renamed from: a  reason: collision with root package name */
    private CropImageView f35022a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f35023b;

    /* renamed from: c  reason: collision with root package name */
    private CropImageOptions f35024c;

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r0.equals(android.net.Uri.EMPTY) != false) goto L_0x0018;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.net.Uri a() {
        /*
            r5 = this;
            r0 = r5
            com.theartofdev.edmodo.cropper.CropImageOptions r0 = r0.f35024c
            android.net.Uri r0 = r0.outputUri
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0018
            r0 = r6
            r7 = r0
            r0 = r6
            android.net.Uri r1 = android.net.Uri.EMPTY
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004f
        L_0x0018:
            r0 = r5
            com.theartofdev.edmodo.cropper.CropImageOptions r0 = r0.f35024c     // Catch: IOException -> 0x0051
            android.graphics.Bitmap$CompressFormat r0 = r0.outputCompressFormat     // Catch: IOException -> 0x0051
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch: IOException -> 0x0051
            if (r0 != r1) goto L_0x002b
            java.lang.String r0 = ".jpg"
            r7 = r0
            goto L_0x0041
        L_0x002b:
            r0 = r5
            com.theartofdev.edmodo.cropper.CropImageOptions r0 = r0.f35024c     // Catch: IOException -> 0x0051
            android.graphics.Bitmap$CompressFormat r0 = r0.outputCompressFormat     // Catch: IOException -> 0x0051
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: IOException -> 0x0051
            if (r0 != r1) goto L_0x003e
            java.lang.String r0 = ".png"
            r7 = r0
            goto L_0x0041
        L_0x003e:
            java.lang.String r0 = ".webp"
            r7 = r0
        L_0x0041:
            java.lang.String r0 = "cropped"
            r1 = r7
            r2 = r5
            java.io.File r2 = r2.getCacheDir()     // Catch: IOException -> 0x0051
            java.io.File r0 = java.io.File.createTempFile(r0, r1, r2)     // Catch: IOException -> 0x0051
            android.net.Uri r0 = android.net.Uri.fromFile(r0)     // Catch: IOException -> 0x0051
            r7 = r0
        L_0x004f:
            r0 = r7
            return r0
        L_0x0051:
            r7 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            java.lang.String r2 = "Failed to create temp file for output image"
            r3 = r7
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.CropImageActivity.a():android.net.Uri");
    }

    private void a(int i) {
        this.f35022a.a(i);
    }

    private void a(Uri uri, Exception exc, int i) {
        setResult(exc == null ? -1 : LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, b(uri, exc, i));
        finish();
    }

    private static void a(Menu menu, int i, int i2) {
        Drawable icon;
        MenuItem findItem = menu.findItem(i);
        if (findItem != null && (icon = findItem.getIcon()) != null) {
            try {
                icon.mutate();
                icon.setColorFilter(i2, PorterDuff.Mode.SRC_ATOP);
                findItem.setIcon(icon);
            } catch (Exception e) {
                Log.w("AIC", "Failed to update menu item color", e);
            }
        }
    }

    private Intent b(Uri uri, Exception exc, int i) {
        CropImage.ActivityResult activityResult = new CropImage.ActivityResult(this.f35022a.h, uri, exc, this.f35022a.c(), this.f35022a.b(), this.f35022a.f35027c, this.f35022a.a(), i);
        Intent intent = new Intent();
        intent.putExtras(getIntent());
        intent.putExtra("CROP_IMAGE_EXTRA_RESULT", activityResult);
        return intent;
    }

    private void b() {
        setResult(0);
        finish();
    }

    @Override // com.theartofdev.edmodo.cropper.CropImageView.d
    public final void a(CropImageView.a aVar) {
        a(aVar.getUri(), aVar.getError(), aVar.getSampleSize());
    }

    @Override // com.theartofdev.edmodo.cropper.CropImageView.h
    public final void a(Exception exc) {
        if (exc == null) {
            if (this.f35024c.initialCropWindowRectangle != null) {
                this.f35022a.setCropRect(this.f35024c.initialCropWindowRectangle);
            }
            if (this.f35024c.initialRotation >= 0) {
                this.f35022a.setRotatedDegrees(this.f35024c.initialRotation);
                return;
            }
            return;
        }
        a((Uri) null, exc, 1);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 200) {
            if (i2 == 0) {
                b();
            }
            if (i2 == -1) {
                boolean z = true;
                if (intent != null) {
                    z = true;
                    if (intent.getData() != null) {
                        String action = intent.getAction();
                        z = action != null && action.equals("android.media.action.IMAGE_CAPTURE");
                    }
                }
                Uri b2 = (z || intent.getData() == null) ? CropImage.b(this) : intent.getData();
                this.f35023b = b2;
                if (CropImage.a(this, b2)) {
                    requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 201);
                } else {
                    this.f35022a.setImageUriAsync(this.f35023b);
                }
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        b();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(g.b.crop_image_activity);
        this.f35022a = (CropImageView) findViewById(g.a.cropImageView);
        Bundle bundleExtra = getIntent().getBundleExtra("CROP_IMAGE_EXTRA_BUNDLE");
        this.f35023b = (Uri) bundleExtra.getParcelable("CROP_IMAGE_EXTRA_SOURCE");
        this.f35024c = (CropImageOptions) bundleExtra.getParcelable("CROP_IMAGE_EXTRA_OPTIONS");
        if (bundle == null) {
            Uri uri = this.f35023b;
            if (uri == null || uri.equals(Uri.EMPTY)) {
                if (CropImage.a((Context) this)) {
                    requestPermissions(new String[]{"android.permission.CAMERA"}, 2011);
                } else {
                    CropImage.a((Activity) this);
                }
            } else if (CropImage.a(this, this.f35023b)) {
                requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 201);
            } else {
                this.f35022a.setImageUriAsync(this.f35023b);
            }
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            CropImageOptions cropImageOptions = this.f35024c;
            supportActionBar.a((cropImageOptions == null || cropImageOptions.activityTitle == null || this.f35024c.activityTitle.length() <= 0) ? getResources().getString(g.d.crop_image_activity_title) : this.f35024c.activityTitle);
            supportActionBar.a(true);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(g.c.crop_image_menu, menu);
        if (!this.f35024c.allowRotation) {
            menu.removeItem(g.a.crop_image_menu_rotate_left);
            menu.removeItem(g.a.crop_image_menu_rotate_right);
        } else if (this.f35024c.allowCounterRotation) {
            menu.findItem(g.a.crop_image_menu_rotate_left).setVisible(true);
        }
        if (!this.f35024c.allowFlipping) {
            menu.removeItem(g.a.crop_image_menu_flip);
        }
        if (this.f35024c.cropMenuCropButtonTitle != null) {
            menu.findItem(g.a.crop_image_menu_crop).setTitle(this.f35024c.cropMenuCropButtonTitle);
        }
        Drawable drawable = null;
        drawable = null;
        try {
            if (this.f35024c.cropMenuCropButtonIcon != 0) {
                drawable = b.a(this, this.f35024c.cropMenuCropButtonIcon);
                drawable = drawable;
                menu.findItem(g.a.crop_image_menu_crop).setIcon(drawable);
            }
        } catch (Exception e) {
            Log.w("AIC", "Failed to read menu crop drawable", e);
        }
        if (this.f35024c.activityMenuIconColor == 0) {
            return true;
        }
        a(menu, g.a.crop_image_menu_rotate_left, this.f35024c.activityMenuIconColor);
        a(menu, g.a.crop_image_menu_rotate_right, this.f35024c.activityMenuIconColor);
        a(menu, g.a.crop_image_menu_flip, this.f35024c.activityMenuIconColor);
        if (drawable == null) {
            return true;
        }
        a(menu, g.a.crop_image_menu_crop, this.f35024c.activityMenuIconColor);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == g.a.crop_image_menu_crop) {
            if (this.f35024c.noOutputImage) {
                a((Uri) null, (Exception) null, 1);
                return true;
            }
            this.f35022a.a(a(), this.f35024c.outputCompressFormat, this.f35024c.outputCompressQuality, this.f35024c.outputRequestWidth, this.f35024c.outputRequestHeight, this.f35024c.outputRequestSizeOptions);
            return true;
        } else if (menuItem.getItemId() == g.a.crop_image_menu_rotate_left) {
            a(-this.f35024c.rotationDegrees);
            return true;
        } else if (menuItem.getItemId() == g.a.crop_image_menu_rotate_right) {
            a(this.f35024c.rotationDegrees);
            return true;
        } else if (menuItem.getItemId() == g.a.crop_image_menu_flip_horizontally) {
            CropImageView cropImageView = this.f35022a;
            cropImageView.f35028d = !cropImageView.f35028d;
            cropImageView.a(cropImageView.getWidth(), cropImageView.getHeight(), true, false);
            return true;
        } else if (menuItem.getItemId() == g.a.crop_image_menu_flip_vertically) {
            CropImageView cropImageView2 = this.f35022a;
            cropImageView2.e = !cropImageView2.e;
            cropImageView2.a(cropImageView2.getWidth(), cropImageView2.getHeight(), true, false);
            return true;
        } else if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            b();
            return true;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 201) {
            Uri uri = this.f35023b;
            if (uri == null || iArr.length <= 0 || iArr[0] != 0) {
                Toast.makeText(this, g.d.crop_image_activity_no_permissions, 1).show();
                b();
            } else {
                this.f35022a.setImageUriAsync(uri);
            }
        }
        if (i == 2011) {
            CropImage.a((Activity) this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f35022a.setOnSetImageUriCompleteListener(this);
        this.f35022a.setOnCropImageCompleteListener(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f35022a.setOnSetImageUriCompleteListener(null);
        this.f35022a.setOnCropImageCompleteListener(null);
    }
}
