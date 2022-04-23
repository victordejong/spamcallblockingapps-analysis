package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.view.autofill.AutofillManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.appsflyer.internal.referrer.Payload;
import com.appsflyer.share.Constants;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.g;
import com.facebook.j;
import com.facebook.k;
import io.objectbox.model.PropertyFlags;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.TimeZone;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.h.l;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
@Metadata(bv = {1, 0, 3}, d1 = {"��Î\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\bÆ\u0002\u0018��2\u00020\u0001:\bæ\u0001ç\u0001è\u0001é\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J'\u0010'\u001a\u00020\u001e\"\u0004\b��\u0010(2\b\u0010)\u001a\u0004\u0018\u0001H(2\b\u0010*\u001a\u0004\u0018\u0001H(H\u0007¢\u0006\u0002\u0010+J7\u0010,\u001a\u0012\u0012\u0004\u0012\u0002H(0-j\b\u0012\u0004\u0012\u0002H(`.\"\u0004\b��\u0010(2\u0012\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u0002H(00\"\u0002H(H\u0007¢\u0006\u0002\u00101J-\u00102\u001a\b\u0012\u0004\u0012\u0002H(03\"\u0004\b��\u0010(2\u0012\u00104\u001a\n\u0012\u0006\b\u0001\u0012\u0002H(00\"\u0002H(H\u0007¢\u0006\u0002\u00105J\u0012\u00106\u001a\u0004\u0018\u00010\u00182\u0006\u00107\u001a\u00020\u0004H\u0007J&\u00108\u001a\u0002092\b\u0010:\u001a\u0004\u0018\u00010\u00042\b\u0010;\u001a\u0004\u0018\u00010\u00042\b\u0010<\u001a\u0004\u0018\u00010=H\u0007J\b\u0010>\u001a\u00020?H\u0007J\u0018\u0010@\u001a\u00020?2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u0004H\u0002J\u0010\u0010D\u001a\u00020?2\u0006\u0010A\u001a\u00020BH\u0007J\u0012\u0010E\u001a\u00020?2\b\u0010F\u001a\u0004\u0018\u00010GH\u0007J\u001e\u0010H\u001a\u0004\u0018\u00010\u00042\b\u0010I\u001a\u0004\u0018\u00010\u00042\b\u0010J\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010K\u001a\u00020\u00112\u0006\u0010L\u001a\u00020MH\u0002J\u0016\u0010N\u001a\b\u0012\u0004\u0012\u00020\u0004032\u0006\u0010O\u001a\u00020PH\u0007J\u001c\u0010Q\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010R2\u0006\u0010S\u001a\u00020\u0018H\u0007J\u001c\u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040R2\u0006\u0010S\u001a\u00020\u0018H\u0007J\u001a\u0010U\u001a\u00020\u00062\b\u0010V\u001a\u0004\u0018\u00010W2\u0006\u0010X\u001a\u00020YH\u0007J\u0012\u0010Z\u001a\u00020?2\b\u0010[\u001a\u0004\u0018\u00010\\H\u0007J\u0012\u0010]\u001a\u00020?2\b\u0010^\u001a\u0004\u0018\u00010_H\u0007J\b\u0010`\u001a\u00020\u001eH\u0002J4\u0010a\u001a\n\u0012\u0004\u0012\u0002H(\u0018\u000103\"\u0004\b��\u0010(2\u000e\u0010b\u001a\n\u0012\u0004\u0012\u0002H(\u0018\u0001032\f\u0010c\u001a\b\u0012\u0004\u0012\u0002H(0dH\u0007J\u0010\u0010e\u001a\u00020\u00042\u0006\u0010f\u001a\u00020\u0006H\u0007J\u0012\u0010g\u001a\u00020\u00042\b\u0010A\u001a\u0004\u0018\u00010BH\u0007J\u0010\u0010h\u001a\u00020\u00042\u0006\u0010A\u001a\u00020BH\u0007J\n\u0010i\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010j\u001a\u0004\u0018\u00010k2\b\u0010l\u001a\u0004\u0018\u00010=2\b\u0010m\u001a\u0004\u0018\u00010\u00042\u0006\u0010n\u001a\u00020kH\u0007J\u0010\u0010o\u001a\u00020\u00112\u0006\u0010p\u001a\u000209H\u0007J\u0010\u0010q\u001a\u00020r2\u0006\u00107\u001a\u00020\u0004H\u0002J\u0018\u0010s\u001a\u00020?2\u0006\u00107\u001a\u00020\u00042\u0006\u0010t\u001a\u00020uH\u0007J\u0012\u0010v\u001a\u00020\u00042\b\u0010A\u001a\u0004\u0018\u00010BH\u0007JC\u0010w\u001a\u0004\u0018\u00010x2\n\u0010y\u001a\u0006\u0012\u0002\b\u00030z2\u0006\u0010{\u001a\u00020\u00042\u001e\u0010|\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010z00\"\b\u0012\u0002\b\u0003\u0018\u00010zH\u0007¢\u0006\u0002\u0010}J?\u0010w\u001a\u0004\u0018\u00010x2\u0006\u0010~\u001a\u00020\u00042\u0006\u0010{\u001a\u00020\u00042\u001e\u0010|\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010z00\"\b\u0012\u0002\b\u0003\u0018\u00010zH\u0007¢\u0006\u0002\u0010\u007fJ(\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010S\u001a\u00020\u00182\b\u0010m\u001a\u0004\u0018\u00010\u00042\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J\u0016\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0013\u0010\u0084\u0001\u001a\u00030\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u00020\u0018H\u0007J\u001d\u0010\u0087\u0001\u001a\u00020\u001e2\b\u0010)\u001a\u0004\u0018\u00010\u00182\b\u0010*\u001a\u0004\u0018\u00010\u0018H\u0007J\u001c\u0010\u0088\u0001\u001a\u00020\u00042\b\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0007\u0010L\u001a\u00030\u008b\u0001H\u0002J;\u0010\u008c\u0001\u001a\u0014\u0012\u0004\u0012\u0002H(0\u008d\u0001j\t\u0012\u0004\u0012\u0002H(`\u008e\u0001\"\u0004\b��\u0010(2\u0012\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u0002H(00\"\u0002H(H\u0007¢\u0006\u0003\u0010\u008f\u0001J\u001d\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010\u0091\u0001\u001a\u00020\u00042\u0007\u0010L\u001a\u00030\u008b\u0001H\u0002J\u001c\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010\u0091\u0001\u001a\u00020\u00042\u0006\u0010m\u001a\u00020\u0004H\u0002J$\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0007J>\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u00012\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u00012\u0007\u0010\u0098\u0001\u001a\u00020x2\u0017\u0010\u0099\u0001\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u000100\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0003\u0010\u009a\u0001J\u0011\u0010\u009b\u0001\u001a\u00020\u001e2\u0006\u0010A\u001a\u00020BH\u0007J\u0011\u0010\u009c\u0001\u001a\u00020\u001e2\u0006\u0010A\u001a\u00020BH\u0007J\u0014\u0010\u009d\u0001\u001a\u00020\u001e2\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0015\u0010\u009e\u0001\u001a\u00020\u001e2\n\u0010\u009f\u0001\u001a\u0005\u0018\u00010 \u0001H\u0007J\u0014\u0010¡\u0001\u001a\u00020\u001e2\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0013\u0010¢\u0001\u001a\u00020\u001e2\b\u0010I\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010¢\u0001\u001a\u00020\u001e\"\u0004\b��\u0010(2\u0010\u0010£\u0001\u001a\u000b\u0012\u0004\u0012\u0002H(\u0018\u00010¤\u0001H\u0007J3\u0010¥\u0001\u001a\u00020\u001e\"\u0004\b��\u0010(2\u0010\u0010¦\u0001\u001a\u000b\u0012\u0004\u0012\u0002H(\u0018\u00010¤\u00012\u0010\u0010§\u0001\u001a\u000b\u0012\u0004\u0012\u0002H(\u0018\u00010¤\u0001H\u0007J\u0014\u0010¨\u0001\u001a\u00020\u001e2\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0018\u0010©\u0001\u001a\t\u0012\u0004\u0012\u00020\u00040ª\u00012\u0006\u0010O\u001a\u00020PH\u0007J\u0017\u0010«\u0001\u001a\b\u0012\u0004\u0012\u00020\u0004032\u0006\u0010O\u001a\u00020PH\u0007J\u001e\u0010¬\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040R2\u0007\u0010\u00ad\u0001\u001a\u00020\u0004H\u0007J'\u0010®\u0001\u001a\u00020?2\t\u0010¯\u0001\u001a\u0004\u0018\u00010\u00042\u0011\u0010°\u0001\u001a\f\u0018\u00010±\u0001j\u0005\u0018\u0001`²\u0001H\u0007J\u001f\u0010®\u0001\u001a\u00020?2\t\u0010¯\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010³\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J+\u0010®\u0001\u001a\u00020?2\t\u0010¯\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010³\u0001\u001a\u0004\u0018\u00010\u00042\n\u0010´\u0001\u001a\u0005\u0018\u00010µ\u0001H\u0007JF\u0010¶\u0001\u001a\u000b\u0012\u0005\u0012\u0003H·\u0001\u0018\u000103\"\u0004\b��\u0010(\"\u0005\b\u0001\u0010·\u00012\u000e\u0010b\u001a\n\u0012\u0004\u0012\u0002H(\u0018\u0001032\u0015\u0010¸\u0001\u001a\u0010\u0012\u0004\u0012\u0002H(\u0012\u0005\u0012\u0003H·\u00010¹\u0001H\u0007J\"\u0010º\u0001\u001a\u00020\u00042\u0017\u0010¶\u0001\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040RH\u0007J\u0013\u0010»\u0001\u001a\u0004\u0018\u00010\u00042\u0006\u0010m\u001a\u00020\u0004H\u0007J\u0011\u0010¼\u0001\u001a\u00020\u001e2\u0006\u0010A\u001a\u00020BH\u0007J\u0014\u0010½\u0001\u001a\u00020=2\t\u0010¾\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J.\u0010¿\u0001\u001a\u00020?2\u0006\u0010*\u001a\u00020=2\b\u0010m\u001a\u0004\u0018\u00010\u00042\u0011\u0010À\u0001\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u000103H\u0007J&\u0010Á\u0001\u001a\u00020\u001e2\u0006\u0010l\u001a\u00020=2\b\u0010m\u001a\u0004\u0018\u00010\u00042\t\u0010Â\u0001\u001a\u0004\u0018\u00010\u0001H\u0007J&\u0010Ã\u0001\u001a\u00020?2\u0006\u0010*\u001a\u00020=2\b\u0010m\u001a\u0004\u0018\u00010\u00042\t\u0010Â\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010Ä\u0001\u001a\u00020?2\u0006\u0010*\u001a\u00020=2\b\u0010m\u001a\u0004\u0018\u00010\u00042\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0013\u0010Å\u0001\u001a\u00020\u00042\b\u0010V\u001a\u0004\u0018\u00010WH\u0007J%\u0010Æ\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010R2\b\u0010Ç\u0001\u001a\u00030È\u0001H\u0007J\t\u0010É\u0001\u001a\u00020?H\u0002J\t\u0010Ê\u0001\u001a\u00020\u0006H\u0002J\u0012\u0010Ë\u0001\u001a\u00020?2\u0007\u0010Ì\u0001\u001a\u00020BH\u0002J\u0012\u0010Í\u0001\u001a\u00020?2\u0007\u0010Ì\u0001\u001a\u00020BH\u0002J\t\u0010Î\u0001\u001a\u00020?H\u0002J\t\u0010Ï\u0001\u001a\u00020?H\u0002J\u0015\u0010Ð\u0001\u001a\u00020?2\n\u0010Ñ\u0001\u001a\u0005\u0018\u00010Ò\u0001H\u0007J\u001f\u0010Ó\u0001\u001a\u00020\u00042\t\u0010Ô\u0001\u001a\u0004\u0018\u00010\u00182\t\u0010Õ\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J2\u0010Ö\u0001\u001a\u00020?2\u0007\u0010×\u0001\u001a\u00020\u00182\n\u0010Ø\u0001\u001a\u0005\u0018\u00010Ù\u00012\t\u0010Ú\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010Û\u0001\u001a\u00020\u001eH\u0007J\u001b\u0010Ü\u0001\u001a\u00020?2\u0007\u0010×\u0001\u001a\u00020\u00182\u0007\u0010Ì\u0001\u001a\u00020BH\u0007J\u0014\u0010Ý\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010L\u001a\u00030\u008b\u0001H\u0007J\u0013\u0010Ý\u0001\u001a\u0004\u0018\u00010\u00042\u0006\u0010m\u001a\u00020\u0004H\u0007J\u0016\u0010Þ\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010L\u001a\u0005\u0018\u00010\u008b\u0001H\u0007J\u0015\u0010Þ\u0001\u001a\u0004\u0018\u00010\u00042\b\u0010m\u001a\u0004\u0018\u00010\u0004H\u0007J\u001d\u0010ß\u0001\u001a\u00020\u001e2\b\u0010)\u001a\u0004\u0018\u00010\u00042\b\u0010*\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010à\u0001\u001a\u0004\u0018\u00010P2\t\u0010Ô\u0001\u001a\u0004\u0018\u00010\u00182\t\u0010á\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010â\u0001\u001a\u0004\u0018\u00010\u00182\t\u0010Ô\u0001\u001a\u0004\u0018\u00010\u00182\t\u0010á\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J0\u0010ã\u0001\u001a\t\u0012\u0004\u0012\u0002H(0¤\u0001\"\u0004\b��\u0010(2\u0012\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u0002H(00\"\u0002H(H\u0007¢\u0006\u0003\u0010ä\u0001J.\u0010å\u0001\u001a\u00020?2\b\u0010Ç\u0001\u001a\u00030È\u00012\u0019\u0010¶\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010RH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0013\u001a\u00020\u00148G¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00188G¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u001d\u001a\u00020\u001e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b\u001d\u0010 R\u0011\u0010!\u001a\u00020\u001e8G¢\u0006\u0006\u001a\u0004\b!\u0010 R\u000e\u0010\"\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0013\u0010#\u001a\u0004\u0018\u00010\u00148G¢\u0006\u0006\u001a\u0004\b$\u0010\u0016R\u000e\u0010%\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010&\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��¨\u0006ê\u0001"}, d2 = {"Lcom/facebook/internal/Utility;", "", "()V", "ARC_DEVICE_PATTERN", "", "DEFAULT_STREAM_BUFFER_SIZE", "", "EXTRA_APP_EVENTS_INFO_FORMAT_VERSION", "HASH_ALGORITHM_MD5", "HASH_ALGORITHM_SHA1", "HASH_ALGORITHM_SHA256", "LOG_TAG", "NO_CARRIER", "REFRESH_TIME_FOR_EXTENDED_DEVICE_INFO_MILLIS", "URL_SCHEME", "UTF8", "availableExternalStorageGB", "", "carrierName", "currentLocale", "Ljava/util/Locale;", "getCurrentLocale", "()Ljava/util/Locale;", "dataProcessingOptions", "Lorg/json/JSONObject;", "getDataProcessingOptions", "()Lorg/json/JSONObject;", "deviceTimeZoneName", "deviceTimezoneAbbreviation", "isAutoAppLinkSetup", "", "isAutoAppLinkSetup$annotations", "()Z", "isDataProcessingRestricted", "numCPUCores", "resourceLocale", "getResourceLocale", "timestampOfLastCheck", "totalExternalStorageGB", "areObjectsEqual", "T", "a", com.google.api.client.googleapis.notifications.b.f31754a, "(Ljava/lang/Object;Ljava/lang/Object;)Z", "arrayList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "ts", "", "([Ljava/lang/Object;)Ljava/util/ArrayList;", "asListNoNulls", "", "array", "([Ljava/lang/Object;)Ljava/util/List;", "awaitGetGraphMeRequestWithCache", "accessToken", "buildUri", "Landroid/net/Uri;", "authority", "path", "parameters", "Landroid/os/Bundle;", "clearCaches", "", "clearCookiesForDomain", "context", "Landroid/content/Context;", "domain", "clearFacebookCookies", "closeQuietly", "closeable", "Ljava/io/Closeable;", "coerceValueIfNullOrEmpty", "s", "valueIfNullOrEmpty", "convertBytesToGB", "bytes", "", "convertJSONArrayToList", "jsonArray", "Lorg/json/JSONArray;", "convertJSONObjectToHashMap", "", "jsonObject", "convertJSONObjectToStringMap", "copyAndCloseInputStream", "inputStream", "Ljava/io/InputStream;", "outputStream", "Ljava/io/OutputStream;", "deleteDirectory", "directoryOrFile", "Ljava/io/File;", "disconnectQuietly", "connection", "Ljava/net/URLConnection;", "externalStorageExists", "filter", "target", "predicate", "Lcom/facebook/internal/Utility$Predicate;", "generateRandomString", "length", "getActivityName", "getAppName", "getAppVersion", "getBundleLongAsDate", "Ljava/util/Date;", "bundle", "key", "dateBase", "getContentSize", "contentUri", "getGraphMeRequestWithCache", "Lcom/facebook/GraphRequest;", "getGraphMeRequestWithCacheAsync", "callback", "Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "getMetadataApplicationId", "getMethodQuietly", "Ljava/lang/reflect/Method;", "clazz", "Ljava/lang/Class;", "methodName", "parameterTypes", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "className", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "getStringPropertyAsJSON", "nonJSONPropertyKey", "getUriString", "uri", "handlePermissionResponse", "Lcom/facebook/internal/Utility$PermissionsLists;", "result", "hasSameId", "hashBytes", "hash", "Ljava/security/MessageDigest;", "", "hashSet", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "([Ljava/lang/Object;)Ljava/util/HashSet;", "hashWithAlgorithm", "algorithm", "intersectRanges", "", "range1", "range2", "invokeMethodQuietly", "receiver", "method", "args", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "isAutofillAvailable", "isChromeOS", "isContentUri", "isCurrentAccessToken", "token", "Lcom/facebook/AccessToken;", "isFileUri", "isNullOrEmpty", Constants.URL_CAMPAIGN, "", "isSubset", "subset", "superset", "isWebUri", "jsonArrayToSet", "", "jsonArrayToStringList", "jsonStrToMap", "str", "logd", "tag", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "msg", "t", "", "map", "K", "mapper", "Lcom/facebook/internal/Utility$Mapper;", "mapToJsonStr", "md5hash", "mustFixWindowParamsForAutofill", "parseUrlQueryString", "queryString", "putCommaSeparatedStringList", "list", "putJSONValueInBundle", "value", "putNonEmptyString", "putUri", "readStreamToString", "readStringMapFromParcel", "parcel", "Landroid/os/Parcel;", "refreshAvailableExternalStorage", "refreshBestGuessNumberOfCPUCores", "refreshCarrierName", "appContext", "refreshPeriodicExtendedDeviceInfo", "refreshTimezone", "refreshTotalExternalStorage", "runOnNonUiThread", "runnable", "Ljava/lang/Runnable;", "safeGetStringFromResponse", Payload.RESPONSE, "propertyName", "setAppEventAttributionParameters", "params", "attributionIdentifiers", "Lcom/facebook/internal/AttributionIdentifiers;", "anonymousAppDeviceGUID", "limitEventUsage", "setAppEventExtendedDeviceInfoParameters", "sha1hash", "sha256hash", "stringsEqualOrEmpty", "tryGetJSONArrayFromResponse", "propertyKey", "tryGetJSONObjectFromResponse", "unmodifiableCollection", "([Ljava/lang/Object;)Ljava/util/Collection;", "writeStringMapToParcel", "GraphMeRequestWithCacheCallback", "Mapper", "PermissionsLists", "Predicate", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/ae.class */
public final class ae {

    /* renamed from: b  reason: collision with root package name */
    private static int f19816b;

    /* renamed from: a  reason: collision with root package name */
    public static final ae f19815a = new ae();

    /* renamed from: c  reason: collision with root package name */
    private static long f19817c = -1;

    /* renamed from: d  reason: collision with root package name */
    private static long f19818d = -1;
    private static long e = -1;
    private static String f = "";
    private static String g = "";
    private static String h = "NoCarrier";

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\t"}, d2 = {"Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "", "onFailure", "", "error", "Lcom/facebook/FacebookException;", "onSuccess", "userInfo", "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ae$a.class */
    public interface a {
        void a(FacebookException facebookException);

        void a(JSONObject jSONObject);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\f\u0018��2\u00020\u0001B/\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0007R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/facebook/internal/Utility$PermissionsLists;", "", "grantedPermissions", "", "", "declinedPermissions", "expiredPermissions", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getDeclinedPermissions", "()Ljava/util/List;", "setDeclinedPermissions", "(Ljava/util/List;)V", "getExpiredPermissions", "setExpiredPermissions", "getGrantedPermissions", "setGrantedPermissions", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ae$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public List<String> f19819a;

        /* renamed from: b  reason: collision with root package name */
        public List<String> f19820b;

        /* renamed from: c  reason: collision with root package name */
        public List<String> f19821c;

        public b(List<String> grantedPermissions, List<String> declinedPermissions, List<String> expiredPermissions) {
            p.d(grantedPermissions, "grantedPermissions");
            p.d(declinedPermissions, "declinedPermissions");
            p.d(expiredPermissions, "expiredPermissions");
            this.f19819a = grantedPermissions;
            this.f19820b = declinedPermissions;
            this.f19821c = expiredPermissions;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", Payload.RESPONSE, "Lcom/facebook/GraphResponse;", "kotlin.jvm.PlatformType", "onCompleted"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ae$c.class */
    static final class c implements GraphRequest.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f19822a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f19823b;

        c(a aVar, String str) {
            this.f19822a = aVar;
            this.f19823b = str;
        }

        @Override // com.facebook.GraphRequest.b
        public final void a(j response) {
            p.b(response, "response");
            if (response.a() != null) {
                a aVar = this.f19822a;
                FacebookRequestError a2 = response.a();
                p.b(a2, "response.error");
                aVar.a(a2.getException());
                return;
            }
            String str = this.f19823b;
            JSONObject b2 = response.b();
            p.b(b2, "response.jsonObject");
            ab.a(str, b2);
            this.f19822a.a(response.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "dir", "Ljava/io/File;", "kotlin.jvm.PlatformType", "fileName", "", "accept"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ae$d.class */
    public static final class d implements FilenameFilter {

        /* renamed from: a  reason: collision with root package name */
        public static final d f19824a = new d();

        d() {
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return Pattern.matches("cpu[0-9]+", str);
        }
    }

    private ae() {
    }

    public static final int a(InputStream inputStream, OutputStream outputStream) throws IOException {
        Throwable th;
        p.d(outputStream, "outputStream");
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
            try {
                byte[] bArr = new byte[PropertyFlags.UNSIGNED];
                int i = 0;
                while (true) {
                    int read = bufferedInputStream2.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, read);
                    i += read;
                }
                bufferedInputStream2.close();
                if (inputStream != null) {
                    inputStream.close();
                }
                return i;
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = bufferedInputStream2;
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static long a(double d2) {
        return Math.round(d2 / 1.073741824E9d);
    }

    public static final Uri a(String str, String str2, Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(com.mopub.common.Constants.HTTPS);
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        Uri build = builder.build();
        p.b(build, "builder.build()");
        return build;
    }

    public static final Object a(Object obj, Method method, Object... args) {
        p.d(method, "method");
        p.d(args, "args");
        Object obj2 = null;
        try {
            obj2 = method.invoke(obj, Arrays.copyOf(args, args.length));
        } catch (IllegalAccessException | InvocationTargetException e2) {
        }
        return obj2;
    }

    public static final Object a(JSONObject jsonObject, String str, String str2) throws JSONException {
        p.d(jsonObject, "jsonObject");
        Object opt = jsonObject.opt(str);
        Object obj = opt;
        if (opt != null) {
            obj = opt;
            if (opt instanceof String) {
                obj = new JSONTokener((String) opt).nextValue();
            }
        }
        if (obj == null || (obj instanceof JSONObject) || (obj instanceof JSONArray)) {
            return obj;
        }
        if (str2 != null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt(str2, obj);
            return jSONObject;
        }
        throw new FacebookException("Got an unexpected non-JSON object.");
    }

    public static final String a(Context context) {
        af.a((Object) context, "context");
        String m = g.m();
        p.b(m, "FacebookSdk.getApplicationId()");
        return m;
    }

    public static final String a(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader;
        BufferedInputStream bufferedInputStream;
        Throwable th;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream);
                try {
                    StringBuilder sb = new StringBuilder();
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read != -1) {
                            sb.append(cArr, 0, read);
                        } else {
                            String sb2 = sb.toString();
                            p.b(sb2, "stringBuilder.toString()");
                            a((Closeable) bufferedInputStream);
                            a(inputStreamReader);
                            return sb2;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    a((Closeable) bufferedInputStream);
                    a(inputStreamReader);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStreamReader = null;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedInputStream = null;
            inputStreamReader = null;
        }
    }

    public static final String a(String str, String str2) {
        return a(str) ? str2 : str;
    }

    private static String a(String str, byte[] bArr) {
        try {
            MessageDigest hash = MessageDigest.getInstance(str);
            p.b(hash, "hash");
            hash.update(bArr);
            byte[] digest = hash.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                sb.append(Integer.toHexString((b2 >> 4) & 15));
                sb.append(Integer.toHexString((b2 >> 0) & 15));
            }
            String sb2 = sb.toString();
            p.b(sb2, "builder.toString()");
            return sb2;
        } catch (NoSuchAlgorithmException e2) {
            return null;
        }
    }

    public static final String a(Map<String, String> map) {
        p.d(map, "map");
        boolean isEmpty = map.isEmpty();
        String str = "";
        if (isEmpty) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            str = jSONObject.toString();
        } catch (JSONException e2) {
        }
        p.b(str, "try {\n        val jsonOb…ion) {\n        \"\"\n      }");
        return str;
    }

    public static final String a(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return "";
        }
        String optString = jSONObject.optString(str, "");
        p.b(optString, "response.optString(propertyName, \"\")");
        return optString;
    }

    public static final String a(byte[] bytes) {
        p.d(bytes, "bytes");
        return a("SHA-1", bytes);
    }

    public static final Method a(Class<?> clazz, String methodName, Class<?>... parameterTypes) {
        Method method;
        p.d(clazz, "clazz");
        p.d(methodName, "methodName");
        p.d(parameterTypes, "parameterTypes");
        try {
            method = clazz.getMethod(methodName, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
        } catch (NoSuchMethodException e2) {
            method = null;
        }
        return method;
    }

    public static final Method a(String className, String methodName, Class<?>... parameterTypes) {
        Method method;
        p.d(className, "className");
        p.d(methodName, "methodName");
        p.d(parameterTypes, "parameterTypes");
        try {
            Class<?> cls = Class.forName(className);
            p.b(cls, "Class.forName(className)");
            method = a(cls, methodName, (Class[]) Arrays.copyOf(parameterTypes, 1));
        } catch (ClassNotFoundException e2) {
            method = null;
        }
        return method;
    }

    public static final <T> Collection<T> a(T... ts) {
        p.d(ts, "ts");
        Collection<T> unmodifiableCollection = Collections.unmodifiableCollection(Arrays.asList(Arrays.copyOf(ts, 2)));
        p.b(unmodifiableCollection, "Collections.unmodifiable…ction(Arrays.asList(*ts))");
        return unmodifiableCollection;
    }

    public static final Date a(Bundle bundle, String str, Date dateBase) {
        Date date;
        long j;
        p.d(dateBase, "dateBase");
        if (bundle == null) {
            return null;
        }
        Object obj = bundle.get(str);
        if (obj instanceof Long) {
            j = ((Number) obj).longValue();
        } else {
            date = null;
            if (obj instanceof String) {
                try {
                    j = Long.parseLong((String) obj);
                } catch (NumberFormatException e2) {
                    date = null;
                }
            }
            return date;
        }
        if (j == 0) {
            return new Date(Long.MAX_VALUE);
        }
        date = new Date(dateBase.getTime() + (j * 1000));
        return date;
    }

    public static final List<String> a(JSONArray jsonArray) {
        ArrayList arrayList;
        p.d(jsonArray, "jsonArray");
        try {
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            int length = jsonArray.length();
            while (true) {
                arrayList = arrayList2;
                if (i >= length) {
                    break;
                }
                String string = jsonArray.getString(i);
                p.b(string, "jsonArray.getString(i)");
                arrayList2.add(string);
                i++;
            }
        } catch (JSONException e2) {
            arrayList = new ArrayList();
        }
        return arrayList;
    }

    public static final Map<String, String> a(Parcel parcel) {
        p.d(parcel, "parcel");
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < readInt; i++) {
            hashMap.put(parcel.readString(), parcel.readString());
        }
        return hashMap;
    }

    public static final Map<String, String> a(JSONObject jsonObject) {
        p.d(jsonObject, "jsonObject");
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jsonObject.keys();
        while (keys.hasNext()) {
            String key = keys.next();
            String optString = jsonObject.optString(key);
            if (optString != null) {
                p.b(key, "key");
                hashMap.put(key, optString);
            }
        }
        return hashMap;
    }

    public static final void a() {
        g.c();
    }

    private static void a(Context context, String str) {
        List a2;
        CookieSyncManager.createInstance(context).sync();
        CookieManager instance = CookieManager.getInstance();
        String cookie = instance.getCookie(str);
        if (cookie != null) {
            Object[] array = kotlin.h.p.a((CharSequence) cookie, new String[]{";"}, false, 0).toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            for (String str2 : (String[]) array) {
                a2 = kotlin.h.p.a(str2, new String[]{"="}, false, 0);
                Object[] array2 = a2.toArray(new String[0]);
                Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
                String[] strArr = (String[]) array2;
                if (strArr.length > 0) {
                    StringBuilder sb = new StringBuilder();
                    String str3 = strArr[0];
                    int length = str3.length() - 1;
                    int i = 0;
                    boolean z = false;
                    while (i <= length) {
                        boolean z2 = p.a(str3.charAt(!z ? i : length), 32) <= 0;
                        if (z) {
                            if (!z2) {
                                break;
                            }
                            length--;
                        } else if (!z2) {
                            z = true;
                        } else {
                            i++;
                        }
                    }
                    sb.append(str3.subSequence(i, length + 1).toString());
                    sb.append("=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
                    instance.setCookie(str, sb.toString());
                }
            }
            instance.removeExpiredCookie();
        }
    }

    public static final void a(Bundle b2, String str, Uri uri) {
        p.d(b2, "b");
        if (uri != null) {
            a(b2, str, uri.toString());
        }
    }

    public static final void a(Bundle b2, String str, String str2) {
        p.d(b2, "b");
        if (!a(str2)) {
            b2.putString(str, str2);
        }
    }

    public static final void a(Parcel parcel, Map<String, String> map) {
        p.d(parcel, "parcel");
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    public static final void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
            }
        }
    }

    public static final void a(File file) {
        File[] listFiles;
        if (file != null && file.exists()) {
            if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    a(file2);
                }
            }
            file.delete();
        }
    }

    public static final void a(Runnable runnable) {
        try {
            g.f().execute(runnable);
        } catch (Exception e2) {
        }
    }

    public static final void a(String accessToken, a callback) {
        p.d(accessToken, "accessToken");
        p.d(callback, "callback");
        JSONObject a2 = ab.a(accessToken);
        if (a2 != null) {
            callback.a(a2);
            return;
        }
        c cVar = new c(callback, accessToken);
        GraphRequest h2 = h(accessToken);
        h2.a((GraphRequest.b) cVar);
        h2.c();
    }

    public static final void a(String str, Exception exc) {
        if (g.c() && str != null && exc != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(exc.getClass().getSimpleName());
            sb.append(": ");
            sb.append(exc.getMessage());
        }
    }

    public static final void a(URLConnection uRLConnection) {
        if (uRLConnection != null && (uRLConnection instanceof HttpURLConnection)) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x02d5 -> B:77:0x010d). Please submit an issue!!! */
    public static final void a(JSONObject params, Context appContext) throws JSONException {
        String str;
        Locale locale;
        int i;
        int i2;
        Object systemService;
        PackageInfo packageInfo;
        p.d(params, "params");
        p.d(appContext, "appContext");
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("a2");
        if (f19817c == -1 || System.currentTimeMillis() - f19817c >= 1800000) {
            f19817c = System.currentTimeMillis();
            try {
                TimeZone tz = TimeZone.getDefault();
                String displayName = tz.getDisplayName(tz.inDaylightTime(new Date()), 0);
                p.b(displayName, "tz.getDisplayName(tz.inD…(Date()), TimeZone.SHORT)");
                f = displayName;
                p.b(tz, "tz");
                String id = tz.getID();
                p.b(id, "tz.id");
                g = id;
            } catch (AssertionError | Exception e2) {
            }
            if (p.a((Object) h, (Object) "NoCarrier")) {
                try {
                    Object systemService2 = appContext.getSystemService(com.callapp.contacts.model.Constants.EXTRA_PHONE_NUMBER);
                    if (systemService2 != null) {
                        String networkOperatorName = ((TelephonyManager) systemService2).getNetworkOperatorName();
                        p.b(networkOperatorName, "telephonyManager.networkOperatorName");
                        h = networkOperatorName;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
                    }
                } catch (Exception e3) {
                }
            }
            try {
                if (j()) {
                    File path = Environment.getExternalStorageDirectory();
                    p.b(path, "path");
                    StatFs statFs = new StatFs(path.getPath());
                    f19818d = statFs.getBlockCount() * statFs.getBlockSize();
                }
                f19818d = a(f19818d);
            } catch (Exception e4) {
            }
            try {
                if (j()) {
                    File path2 = Environment.getExternalStorageDirectory();
                    p.b(path2, "path");
                    StatFs statFs2 = new StatFs(path2.getPath());
                    e = statFs2.getAvailableBlocks() * statFs2.getBlockSize();
                }
                e = a(e);
            } catch (Exception e5) {
            }
        }
        String packageName = appContext.getPackageName();
        int i3 = -1;
        try {
            packageInfo = appContext.getPackageManager().getPackageInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException e6) {
            str = "";
        }
        if (packageInfo != null) {
            int i4 = packageInfo.versionCode;
            i3 = i4;
            str = packageInfo.versionName;
            i3 = i4;
            jSONArray.put(packageName);
            jSONArray.put(i3);
            jSONArray.put(str);
            jSONArray.put(Build.VERSION.RELEASE);
            jSONArray.put(Build.MODEL);
            try {
                Resources resources = appContext.getResources();
                p.b(resources, "appContext.resources");
                locale = resources.getConfiguration().locale;
            } catch (Exception e7) {
                locale = Locale.getDefault();
            }
            StringBuilder sb = new StringBuilder();
            p.b(locale, "locale");
            sb.append(locale.getLanguage());
            sb.append("_");
            sb.append(locale.getCountry());
            jSONArray.put(sb.toString());
            jSONArray.put(f);
            jSONArray.put(h);
            double d2 = 0.0d;
            try {
                systemService = appContext.getSystemService("window");
            } catch (Exception e8) {
                i = 0;
            }
            if (systemService != null) {
                WindowManager windowManager = (WindowManager) systemService;
                i = 0;
                if (windowManager != null) {
                    Display defaultDisplay = windowManager.getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getMetrics(displayMetrics);
                    i = displayMetrics.widthPixels;
                    try {
                        i2 = displayMetrics.heightPixels;
                        try {
                            d2 = displayMetrics.density;
                        } catch (Exception e9) {
                        }
                    } catch (Exception e10) {
                    }
                    jSONArray.put(i);
                    jSONArray.put(i2);
                    jSONArray.put(new DecimalFormat("#.##").format(d2));
                    jSONArray.put(i());
                    jSONArray.put(f19818d);
                    jSONArray.put(e);
                    jSONArray.put(g);
                    params.put("extinfo", jSONArray.toString());
                    return;
                }
                i2 = 0;
                jSONArray.put(i);
                jSONArray.put(i2);
                jSONArray.put(new DecimalFormat("#.##").format(d2));
                jSONArray.put(i());
                jSONArray.put(f19818d);
                jSONArray.put(e);
                jSONArray.put(g);
                params.put("extinfo", jSONArray.toString());
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.view.WindowManager");
        }
    }

    public static final void a(JSONObject params, com.facebook.internal.b bVar, String str, boolean z) throws JSONException {
        p.d(params, "params");
        params.put("anon_id", str);
        boolean z2 = true;
        params.put("application_tracking_enabled", !z);
        params.put("advertiser_id_collection_enabled", g.r());
        if (bVar != null) {
            if (bVar.f19859a != null) {
                params.put("attribution", bVar.f19859a);
            }
            if (bVar.a() != null) {
                params.put("advertiser_id", bVar.a());
                params.put("advertiser_tracking_enabled", !bVar.f19861c);
            }
            if (!bVar.f19861c) {
                String userData = com.facebook.appevents.p.b();
                p.b(userData, "userData");
                if (userData.length() != 0) {
                    z2 = false;
                }
                if (!z2) {
                    params.put("ud", userData);
                }
            }
            if (bVar.f19860b != null) {
                params.put("installer_package", bVar.f19860b);
            }
        }
    }

    public static final boolean a(Uri uri) {
        if (uri != null) {
            return kotlin.h.p.a("http", uri.getScheme()) || kotlin.h.p.a(com.mopub.common.Constants.HTTPS, uri.getScheme()) || kotlin.h.p.a("fbstaging", uri.getScheme());
        }
        return false;
    }

    public static final boolean a(Bundle bundle, String str, Object obj) {
        p.d(bundle, "bundle");
        bundle.putString(str, obj.toString());
        return true;
    }

    public static final boolean a(AccessToken accessToken) {
        return accessToken != null && p.a(accessToken, AccessToken.getCurrentAccessToken());
    }

    public static final <T> boolean a(T t, T t2) {
        return t == null ? t2 == null : p.a(t, t2);
    }

    public static final boolean a(String str) {
        if (str == null) {
            return true;
        }
        return str.length() == 0;
    }

    public static final <T> boolean a(Collection<? extends T> collection) {
        return collection == null || collection.isEmpty();
    }

    public static final b b(JSONObject result) throws JSONException {
        String optString;
        p.d(result, "result");
        JSONArray jSONArray = result.getJSONObject("permissions").getJSONArray("data");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        ArrayList arrayList2 = new ArrayList(jSONArray.length());
        ArrayList arrayList3 = new ArrayList(jSONArray.length());
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString2 = optJSONObject.optString("permission");
            if (!(optString2 == null || p.a((Object) optString2, (Object) "installed") || (optString = optJSONObject.optString("status")) == null)) {
                if (p.a((Object) optString, (Object) "granted")) {
                    arrayList.add(optString2);
                } else if (p.a((Object) optString, (Object) "declined")) {
                    arrayList2.add(optString2);
                } else if (p.a((Object) optString, (Object) "expired")) {
                    arrayList3.add(optString2);
                }
            }
        }
        return new b(arrayList, arrayList2, arrayList3);
    }

    public static final String b() {
        Context i = g.i();
        if (i == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = i.getPackageManager().getPackageInfo(i.getPackageName(), 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    public static final String b(String key) {
        p.d(key, "key");
        return f19815a.b("MD5", key);
    }

    private final String b(String str, String str2) {
        Charset charset = kotlin.h.d.f36719a;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str2.getBytes(charset);
        p.b(bytes, "(this as java.lang.String).getBytes(charset)");
        return a(str, bytes);
    }

    public static final List<String> b(JSONArray jsonArray) throws JSONException {
        p.d(jsonArray, "jsonArray");
        ArrayList arrayList = new ArrayList();
        int length = jsonArray.length();
        for (int i = 0; i < length; i++) {
            arrayList.add(jsonArray.getString(i));
        }
        return arrayList;
    }

    public static final <T> List<T> b(T... array) {
        p.d(array, "array");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 2; i++) {
            T t = array[i];
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static final JSONObject b(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(str);
        }
        return null;
    }

    public static final void b(Context context) {
        p.d(context, "context");
        a(context, "facebook.com");
        a(context, ".facebook.com");
        a(context, "https://facebook.com");
        a(context, "https://.facebook.com");
    }

    public static final boolean b(Uri uri) {
        return uri != null && kotlin.h.p.a(com.mopub.common.Constants.VAST_TRACKER_CONTENT, uri.getScheme());
    }

    public static final String c() {
        String bigInteger = new BigInteger(100, new Random()).toString(32);
        p.b(bigInteger, "BigInteger(length * 5, r).toString(32)");
        return bigInteger;
    }

    public static final String c(Context context) {
        if (context == null) {
            return JsonReaderKt.NULL;
        }
        if (context == context.getApplicationContext()) {
            return "unknown";
        }
        String simpleName = context.getClass().getSimpleName();
        p.b(simpleName, "context.javaClass.simpleName");
        return simpleName;
    }

    public static final String c(String str) {
        if (str == null) {
            return null;
        }
        return f19815a.b("SHA-256", str);
    }

    public static final JSONArray c(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONArray(str);
        }
        return null;
    }

    public static final boolean c(Uri uri) {
        return uri != null && kotlin.h.p.a("file", uri.getScheme());
    }

    public static final long d(Uri contentUri) {
        p.d(contentUri, "contentUri");
        Cursor cursor = null;
        try {
            Context i = g.i();
            p.b(i, "FacebookSdk.getApplicationContext()");
            Cursor query = i.getContentResolver().query(contentUri, null, null, null, null);
            if (query == null) {
                return 0L;
            }
            int columnIndex = query.getColumnIndex("_size");
            query.moveToFirst();
            cursor = query;
            long j = query.getLong(columnIndex);
            query.close();
            return j;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static final Bundle d(String str) {
        List a2;
        List a3;
        Bundle bundle = new Bundle();
        if (!a(str)) {
            if (str != null) {
                a2 = kotlin.h.p.a(str, new String[]{"&"}, false, 0);
                Object[] array = a2.toArray(new String[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                for (String str2 : (String[]) array) {
                    a3 = kotlin.h.p.a(str2, new String[]{"="}, false, 0);
                    Object[] array2 = a3.toArray(new String[0]);
                    Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
                    String[] strArr = (String[]) array2;
                    try {
                        if (strArr.length == 2) {
                            bundle.putString(URLDecoder.decode(strArr[0], "UTF-8"), URLDecoder.decode(strArr[1], "UTF-8"));
                        } else if (strArr.length == 1) {
                            bundle.putString(URLDecoder.decode(strArr[0], "UTF-8"), "");
                        }
                    } catch (UnsupportedEncodingException e2) {
                        a("FacebookSDK", (Exception) e2);
                    }
                }
            } else {
                throw new IllegalStateException("Required value was null.".toString());
            }
        }
        return bundle;
    }

    public static final Locale d() {
        Locale locale;
        try {
            Context i = g.i();
            p.b(i, "FacebookSdk.getApplicationContext()");
            Resources resources = i.getResources();
            p.b(resources, "FacebookSdk.getApplicationContext().resources");
            locale = resources.getConfiguration().locale;
        } catch (Exception e2) {
            locale = null;
        }
        return locale;
    }

    public static final boolean d(Context context) {
        AutofillManager autofillManager;
        p.d(context, "context");
        p.d(context, "context");
        return Build.VERSION.SDK_INT >= 26 && (autofillManager = (AutofillManager) context.getSystemService(AutofillManager.class)) != null && autofillManager.isAutofillSupported() && autofillManager.isEnabled();
    }

    public static final Locale e() {
        Locale d2 = d();
        Locale locale = d2;
        if (d2 == null) {
            locale = Locale.getDefault();
            p.b(locale, "Locale.getDefault()");
        }
        return locale;
    }

    public static final void e(String str) {
        if (g.c()) {
            a(str);
        }
    }

    public static final boolean e(Context context) {
        p.d(context, "context");
        if (Build.VERSION.SDK_INT >= 27) {
            return context.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        }
        if (Build.DEVICE == null) {
            return false;
        }
        String str = Build.DEVICE;
        p.b(str, "Build.DEVICE");
        return new l(".+_cheets|cheets_.+").a(str);
    }

    public static final String f(Context context) {
        String str;
        String n;
        p.d(context, "context");
        try {
            n = g.n();
        } catch (Exception e2) {
            str = "";
        }
        if (n != null) {
            return n;
        }
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        int i = applicationInfo.labelRes;
        if (i == 0) {
            str = applicationInfo.nonLocalizedLabel.toString();
        } else {
            str = context.getString(i);
            p.b(str, "context.getString(stringId)");
        }
        return str;
    }

    public static final Map<String, String> f(String str) {
        HashMap hashMap;
        p.d(str, "str");
        if (str.length() == 0) {
            return new HashMap();
        }
        try {
            HashMap hashMap2 = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (true) {
                hashMap = hashMap2;
                if (!keys.hasNext()) {
                    break;
                }
                String key = keys.next();
                p.b(key, "key");
                String string = jSONObject.getString(key);
                p.b(string, "jsonObject.getString(key)");
                hashMap2.put(key, string);
            }
        } catch (JSONException e2) {
            hashMap = new HashMap();
        }
        return hashMap;
    }

    public static final boolean f() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            ag agVar = ag.f36785a;
            String format = String.format("fb%s://applinks", Arrays.copyOf(new Object[]{g.m()}, 1));
            p.b(format, "java.lang.String.format(format, *args)");
            intent.setData(Uri.parse(format));
            Context ctx = g.i();
            p.b(ctx, "ctx");
            PackageManager packageManager = ctx.getPackageManager();
            String packageName = ctx.getPackageName();
            Iterator<ResolveInfo> it2 = packageManager.queryIntentActivities(intent, 65536).iterator();
            do {
                if (!it2.hasNext()) {
                    return false;
                }
            } while (!p.a((Object) packageName, (Object) it2.next().activityInfo.packageName));
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    public static final JSONObject g() {
        if (com.facebook.internal.b.b.a.a(ae.class)) {
            return null;
        }
        try {
            String string = g.i().getSharedPreferences("com.facebook.sdk.DataProcessingOptions", 0).getString("data_processing_options", null);
            if (string == null) {
                return null;
            }
            try {
                return new JSONObject(string);
            } catch (JSONException e2) {
                return null;
            }
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, ae.class);
            return null;
        }
    }

    public static final JSONObject g(String accessToken) {
        p.d(accessToken, "accessToken");
        JSONObject a2 = ab.a(accessToken);
        if (a2 != null) {
            return a2;
        }
        j response = h(accessToken).b();
        p.b(response, "response");
        if (response.a() != null) {
            return null;
        }
        return response.b();
    }

    private static GraphRequest h(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,name,first_name,middle_name,last_name");
        bundle.putString(AccessToken.ACCESS_TOKEN_KEY, str);
        return new GraphRequest(null, "me", bundle, k.GET, null);
    }

    public static final boolean h() {
        if (com.facebook.internal.b.b.a.a(ae.class)) {
            return false;
        }
        try {
            JSONObject g2 = g();
            if (g2 == null) {
                return false;
            }
            try {
                JSONArray jSONArray = g2.getJSONArray("data_processing_options");
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    String string = jSONArray.getString(i);
                    p.b(string, "options.getString(i)");
                    if (string != null) {
                        String lowerCase = string.toLowerCase();
                        p.b(lowerCase, "(this as java.lang.String).toLowerCase()");
                        if (p.a((Object) lowerCase, (Object) "ldu")) {
                            return true;
                        }
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                    }
                }
                return false;
            } catch (Exception e2) {
                return false;
            }
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, ae.class);
            return false;
        }
    }

    private static int i() {
        int i = f19816b;
        if (i > 0) {
            return i;
        }
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(d.f19824a);
            if (listFiles != null) {
                f19816b = listFiles.length;
            }
        } catch (Exception e2) {
        }
        if (f19816b <= 0) {
            f19816b = Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        return f19816b;
    }

    private static boolean j() {
        return p.a((Object) "mounted", (Object) Environment.getExternalStorageState());
    }
}
