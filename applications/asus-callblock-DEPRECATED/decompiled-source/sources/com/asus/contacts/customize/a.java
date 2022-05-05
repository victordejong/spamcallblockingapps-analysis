package com.asus.contacts.customize;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.android.contacts.ezmode.h;
import com.android.contacts.util.PhoneCapabilityTester;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/customize/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f2608a = "CustomizedUtils";

    public static int a(Context context, String str) {
        return context.getSharedPreferences("customized_background", 0).getInt(str, 0);
    }

    private static String a(Activity activity, String str) {
        return activity.getSharedPreferences("customized_background", 0).getString(str, null);
    }

    public static void a(Activity activity, FrameLayout frameLayout, String str, String str2) {
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        if (!h.a(activity)) {
            int a2 = a((Context) activity, str);
            Log.d(f2608a, "getCustomizedBackground " + str + " type: " + a2);
            if (a2 != 0) {
                String a3 = a(activity, str2);
                Log.d(f2608a, "getCustomizedBackground " + str2 + " uri: " + a3);
                if (a3 != null) {
                    try {
                        try {
                            InputStream openInputStream = activity.getContentResolver().openInputStream(Uri.parse(a3));
                            Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
                            if (createFromStream != null) {
                                frameLayout.setBackgroundDrawable(createFromStream);
                            } else {
                                Log.d(f2608a, ">>> setBackground: drawable is null");
                            }
                            if (openInputStream != null) {
                                try {
                                    openInputStream.close();
                                } catch (Exception e) {
                                }
                            }
                        } catch (Throwable th) {
                            if (0 != 0) {
                                try {
                                    inputStream.close();
                                } catch (Exception e2) {
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e3) {
                        Log.d(f2608a, "Exception happens in setCustomizedBackgroundLayout()");
                        Log.e(f2608a, e3.toString());
                        e3.printStackTrace();
                        if (0 != 0) {
                            try {
                                inputStream2.close();
                            } catch (Exception e4) {
                            }
                        }
                    }
                }
            }
        }
    }

    public static void a(Activity activity, ImageView imageView, String str, String str2) {
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        if (!h.a(activity)) {
            int a2 = a((Context) activity, str);
            Log.d(f2608a, "getCustomizedBackground " + str + " type: " + a2);
            if (a2 != 0) {
                String a3 = a(activity, str2);
                Log.d(f2608a, "getCustomizedBackground " + str2 + " uri: " + a3);
                if (a3 != null) {
                    try {
                        try {
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inPurgeable = true;
                            if (!PhoneCapabilityTester.isHighendDevice(activity.getApplicationContext(), 2L)) {
                                options.inSampleSize = 2;
                            }
                            InputStream openInputStream = activity.getContentResolver().openInputStream(Uri.parse(a3));
                            Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream, null, options);
                            if (decodeStream != null && !decodeStream.isRecycled()) {
                                imageView.setImageBitmap(decodeStream);
                            } else if (decodeStream == null) {
                                Log.d(f2608a, ">>> setBackground: bitmap is null");
                            } else {
                                Log.d(f2608a, ">>> setBackground: bitmap is recycled");
                            }
                            if (openInputStream != null) {
                                try {
                                    openInputStream.close();
                                } catch (Exception e) {
                                }
                            }
                        } catch (Exception e2) {
                            Log.d(f2608a, "Exception happens in setCustomizedBackgroundImage()");
                            Log.e(f2608a, e2.toString());
                            e2.printStackTrace();
                            if (0 != 0) {
                                try {
                                    inputStream2.close();
                                } catch (Exception e3) {
                                }
                            }
                        }
                    } catch (Throwable th) {
                        if (0 != 0) {
                            try {
                                inputStream.close();
                            } catch (Exception e4) {
                            }
                        }
                        throw th;
                    }
                }
            }
        }
    }
}
