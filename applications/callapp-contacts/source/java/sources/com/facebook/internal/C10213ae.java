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
import com.facebook.C10181g;
import com.facebook.C10351j;
import com.facebook.EnumC10352k;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.C10102p;
import com.facebook.internal.p299b.p301b.C10249a;
import com.google.api.client.googleapis.notifications.C15291b;
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
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18405d;
import kotlin.p532h.C18418l;
import kotlin.p532h.C18425p;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��Î\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\bÆ\u0002\u0018��2\u00020\u0001:\bæ\u0001ç\u0001è\u0001é\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J'\u0010'\u001a\u00020\u001e\"\u0004\b��\u0010(2\b\u0010)\u001a\u0004\u0018\u0001H(2\b\u0010*\u001a\u0004\u0018\u0001H(H\u0007¢\u0006\u0002\u0010+J7\u0010,\u001a\u0012\u0012\u0004\u0012\u0002H(0-j\b\u0012\u0004\u0012\u0002H(`.\"\u0004\b��\u0010(2\u0012\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u0002H(00\"\u0002H(H\u0007¢\u0006\u0002\u00101J-\u00102\u001a\b\u0012\u0004\u0012\u0002H(03\"\u0004\b��\u0010(2\u0012\u00104\u001a\n\u0012\u0006\b\u0001\u0012\u0002H(00\"\u0002H(H\u0007¢\u0006\u0002\u00105J\u0012\u00106\u001a\u0004\u0018\u00010\u00182\u0006\u00107\u001a\u00020\u0004H\u0007J&\u00108\u001a\u0002092\b\u0010:\u001a\u0004\u0018\u00010\u00042\b\u0010;\u001a\u0004\u0018\u00010\u00042\b\u0010<\u001a\u0004\u0018\u00010=H\u0007J\b\u0010>\u001a\u00020?H\u0007J\u0018\u0010@\u001a\u00020?2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u0004H\u0002J\u0010\u0010D\u001a\u00020?2\u0006\u0010A\u001a\u00020BH\u0007J\u0012\u0010E\u001a\u00020?2\b\u0010F\u001a\u0004\u0018\u00010GH\u0007J\u001e\u0010H\u001a\u0004\u0018\u00010\u00042\b\u0010I\u001a\u0004\u0018\u00010\u00042\b\u0010J\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010K\u001a\u00020\u00112\u0006\u0010L\u001a\u00020MH\u0002J\u0016\u0010N\u001a\b\u0012\u0004\u0012\u00020\u0004032\u0006\u0010O\u001a\u00020PH\u0007J\u001c\u0010Q\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010R2\u0006\u0010S\u001a\u00020\u0018H\u0007J\u001c\u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040R2\u0006\u0010S\u001a\u00020\u0018H\u0007J\u001a\u0010U\u001a\u00020\u00062\b\u0010V\u001a\u0004\u0018\u00010W2\u0006\u0010X\u001a\u00020YH\u0007J\u0012\u0010Z\u001a\u00020?2\b\u0010[\u001a\u0004\u0018\u00010\\H\u0007J\u0012\u0010]\u001a\u00020?2\b\u0010^\u001a\u0004\u0018\u00010_H\u0007J\b\u0010`\u001a\u00020\u001eH\u0002J4\u0010a\u001a\n\u0012\u0004\u0012\u0002H(\u0018\u000103\"\u0004\b��\u0010(2\u000e\u0010b\u001a\n\u0012\u0004\u0012\u0002H(\u0018\u0001032\f\u0010c\u001a\b\u0012\u0004\u0012\u0002H(0dH\u0007J\u0010\u0010e\u001a\u00020\u00042\u0006\u0010f\u001a\u00020\u0006H\u0007J\u0012\u0010g\u001a\u00020\u00042\b\u0010A\u001a\u0004\u0018\u00010BH\u0007J\u0010\u0010h\u001a\u00020\u00042\u0006\u0010A\u001a\u00020BH\u0007J\n\u0010i\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010j\u001a\u0004\u0018\u00010k2\b\u0010l\u001a\u0004\u0018\u00010=2\b\u0010m\u001a\u0004\u0018\u00010\u00042\u0006\u0010n\u001a\u00020kH\u0007J\u0010\u0010o\u001a\u00020\u00112\u0006\u0010p\u001a\u000209H\u0007J\u0010\u0010q\u001a\u00020r2\u0006\u00107\u001a\u00020\u0004H\u0002J\u0018\u0010s\u001a\u00020?2\u0006\u00107\u001a\u00020\u00042\u0006\u0010t\u001a\u00020uH\u0007J\u0012\u0010v\u001a\u00020\u00042\b\u0010A\u001a\u0004\u0018\u00010BH\u0007JC\u0010w\u001a\u0004\u0018\u00010x2\n\u0010y\u001a\u0006\u0012\u0002\b\u00030z2\u0006\u0010{\u001a\u00020\u00042\u001e\u0010|\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010z00\"\b\u0012\u0002\b\u0003\u0018\u00010zH\u0007¢\u0006\u0002\u0010}J?\u0010w\u001a\u0004\u0018\u00010x2\u0006\u0010~\u001a\u00020\u00042\u0006\u0010{\u001a\u00020\u00042\u001e\u0010|\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010z00\"\b\u0012\u0002\b\u0003\u0018\u00010zH\u0007¢\u0006\u0002\u0010\u007fJ(\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010S\u001a\u00020\u00182\b\u0010m\u001a\u0004\u0018\u00010\u00042\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J\u0016\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0013\u0010\u0084\u0001\u001a\u00030\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u00020\u0018H\u0007J\u001d\u0010\u0087\u0001\u001a\u00020\u001e2\b\u0010)\u001a\u0004\u0018\u00010\u00182\b\u0010*\u001a\u0004\u0018\u00010\u0018H\u0007J\u001c\u0010\u0088\u0001\u001a\u00020\u00042\b\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0007\u0010L\u001a\u00030\u008b\u0001H\u0002J;\u0010\u008c\u0001\u001a\u0014\u0012\u0004\u0012\u0002H(0\u008d\u0001j\t\u0012\u0004\u0012\u0002H(`\u008e\u0001\"\u0004\b��\u0010(2\u0012\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u0002H(00\"\u0002H(H\u0007¢\u0006\u0003\u0010\u008f\u0001J\u001d\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010\u0091\u0001\u001a\u00020\u00042\u0007\u0010L\u001a\u00030\u008b\u0001H\u0002J\u001c\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010\u0091\u0001\u001a\u00020\u00042\u0006\u0010m\u001a\u00020\u0004H\u0002J$\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0007J>\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u00012\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u00012\u0007\u0010\u0098\u0001\u001a\u00020x2\u0017\u0010\u0099\u0001\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u000100\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0003\u0010\u009a\u0001J\u0011\u0010\u009b\u0001\u001a\u00020\u001e2\u0006\u0010A\u001a\u00020BH\u0007J\u0011\u0010\u009c\u0001\u001a\u00020\u001e2\u0006\u0010A\u001a\u00020BH\u0007J\u0014\u0010\u009d\u0001\u001a\u00020\u001e2\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0015\u0010\u009e\u0001\u001a\u00020\u001e2\n\u0010\u009f\u0001\u001a\u0005\u0018\u00010 \u0001H\u0007J\u0014\u0010¡\u0001\u001a\u00020\u001e2\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0013\u0010¢\u0001\u001a\u00020\u001e2\b\u0010I\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010¢\u0001\u001a\u00020\u001e\"\u0004\b��\u0010(2\u0010\u0010£\u0001\u001a\u000b\u0012\u0004\u0012\u0002H(\u0018\u00010¤\u0001H\u0007J3\u0010¥\u0001\u001a\u00020\u001e\"\u0004\b��\u0010(2\u0010\u0010¦\u0001\u001a\u000b\u0012\u0004\u0012\u0002H(\u0018\u00010¤\u00012\u0010\u0010§\u0001\u001a\u000b\u0012\u0004\u0012\u0002H(\u0018\u00010¤\u0001H\u0007J\u0014\u0010¨\u0001\u001a\u00020\u001e2\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0018\u0010©\u0001\u001a\t\u0012\u0004\u0012\u00020\u00040ª\u00012\u0006\u0010O\u001a\u00020PH\u0007J\u0017\u0010«\u0001\u001a\b\u0012\u0004\u0012\u00020\u0004032\u0006\u0010O\u001a\u00020PH\u0007J\u001e\u0010¬\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040R2\u0007\u0010\u00ad\u0001\u001a\u00020\u0004H\u0007J'\u0010®\u0001\u001a\u00020?2\t\u0010¯\u0001\u001a\u0004\u0018\u00010\u00042\u0011\u0010°\u0001\u001a\f\u0018\u00010±\u0001j\u0005\u0018\u0001`²\u0001H\u0007J\u001f\u0010®\u0001\u001a\u00020?2\t\u0010¯\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010³\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J+\u0010®\u0001\u001a\u00020?2\t\u0010¯\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010³\u0001\u001a\u0004\u0018\u00010\u00042\n\u0010´\u0001\u001a\u0005\u0018\u00010µ\u0001H\u0007JF\u0010¶\u0001\u001a\u000b\u0012\u0005\u0012\u0003H·\u0001\u0018\u000103\"\u0004\b��\u0010(\"\u0005\b\u0001\u0010·\u00012\u000e\u0010b\u001a\n\u0012\u0004\u0012\u0002H(\u0018\u0001032\u0015\u0010¸\u0001\u001a\u0010\u0012\u0004\u0012\u0002H(\u0012\u0005\u0012\u0003H·\u00010¹\u0001H\u0007J\"\u0010º\u0001\u001a\u00020\u00042\u0017\u0010¶\u0001\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040RH\u0007J\u0013\u0010»\u0001\u001a\u0004\u0018\u00010\u00042\u0006\u0010m\u001a\u00020\u0004H\u0007J\u0011\u0010¼\u0001\u001a\u00020\u001e2\u0006\u0010A\u001a\u00020BH\u0007J\u0014\u0010½\u0001\u001a\u00020=2\t\u0010¾\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J.\u0010¿\u0001\u001a\u00020?2\u0006\u0010*\u001a\u00020=2\b\u0010m\u001a\u0004\u0018\u00010\u00042\u0011\u0010À\u0001\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u000103H\u0007J&\u0010Á\u0001\u001a\u00020\u001e2\u0006\u0010l\u001a\u00020=2\b\u0010m\u001a\u0004\u0018\u00010\u00042\t\u0010Â\u0001\u001a\u0004\u0018\u00010\u0001H\u0007J&\u0010Ã\u0001\u001a\u00020?2\u0006\u0010*\u001a\u00020=2\b\u0010m\u001a\u0004\u0018\u00010\u00042\t\u0010Â\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010Ä\u0001\u001a\u00020?2\u0006\u0010*\u001a\u00020=2\b\u0010m\u001a\u0004\u0018\u00010\u00042\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0013\u0010Å\u0001\u001a\u00020\u00042\b\u0010V\u001a\u0004\u0018\u00010WH\u0007J%\u0010Æ\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010R2\b\u0010Ç\u0001\u001a\u00030È\u0001H\u0007J\t\u0010É\u0001\u001a\u00020?H\u0002J\t\u0010Ê\u0001\u001a\u00020\u0006H\u0002J\u0012\u0010Ë\u0001\u001a\u00020?2\u0007\u0010Ì\u0001\u001a\u00020BH\u0002J\u0012\u0010Í\u0001\u001a\u00020?2\u0007\u0010Ì\u0001\u001a\u00020BH\u0002J\t\u0010Î\u0001\u001a\u00020?H\u0002J\t\u0010Ï\u0001\u001a\u00020?H\u0002J\u0015\u0010Ð\u0001\u001a\u00020?2\n\u0010Ñ\u0001\u001a\u0005\u0018\u00010Ò\u0001H\u0007J\u001f\u0010Ó\u0001\u001a\u00020\u00042\t\u0010Ô\u0001\u001a\u0004\u0018\u00010\u00182\t\u0010Õ\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J2\u0010Ö\u0001\u001a\u00020?2\u0007\u0010×\u0001\u001a\u00020\u00182\n\u0010Ø\u0001\u001a\u0005\u0018\u00010Ù\u00012\t\u0010Ú\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010Û\u0001\u001a\u00020\u001eH\u0007J\u001b\u0010Ü\u0001\u001a\u00020?2\u0007\u0010×\u0001\u001a\u00020\u00182\u0007\u0010Ì\u0001\u001a\u00020BH\u0007J\u0014\u0010Ý\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010L\u001a\u00030\u008b\u0001H\u0007J\u0013\u0010Ý\u0001\u001a\u0004\u0018\u00010\u00042\u0006\u0010m\u001a\u00020\u0004H\u0007J\u0016\u0010Þ\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010L\u001a\u0005\u0018\u00010\u008b\u0001H\u0007J\u0015\u0010Þ\u0001\u001a\u0004\u0018\u00010\u00042\b\u0010m\u001a\u0004\u0018\u00010\u0004H\u0007J\u001d\u0010ß\u0001\u001a\u00020\u001e2\b\u0010)\u001a\u0004\u0018\u00010\u00042\b\u0010*\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010à\u0001\u001a\u0004\u0018\u00010P2\t\u0010Ô\u0001\u001a\u0004\u0018\u00010\u00182\t\u0010á\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010â\u0001\u001a\u0004\u0018\u00010\u00182\t\u0010Ô\u0001\u001a\u0004\u0018\u00010\u00182\t\u0010á\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J0\u0010ã\u0001\u001a\t\u0012\u0004\u0012\u0002H(0¤\u0001\"\u0004\b��\u0010(2\u0012\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u0002H(00\"\u0002H(H\u0007¢\u0006\u0003\u0010ä\u0001J.\u0010å\u0001\u001a\u00020?2\b\u0010Ç\u0001\u001a\u00030È\u00012\u0019\u0010¶\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010RH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0013\u001a\u00020\u00148G¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00188G¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u001d\u001a\u00020\u001e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b\u001d\u0010 R\u0011\u0010!\u001a\u00020\u001e8G¢\u0006\u0006\u001a\u0004\b!\u0010 R\u000e\u0010\"\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0013\u0010#\u001a\u0004\u0018\u00010\u00148G¢\u0006\u0006\u001a\u0004\b$\u0010\u0016R\u000e\u0010%\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010&\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��¨\u0006ê\u0001"}, m4298d2 = {"Lcom/facebook/internal/Utility;", "", "()V", "ARC_DEVICE_PATTERN", "", "DEFAULT_STREAM_BUFFER_SIZE", "", "EXTRA_APP_EVENTS_INFO_FORMAT_VERSION", "HASH_ALGORITHM_MD5", "HASH_ALGORITHM_SHA1", "HASH_ALGORITHM_SHA256", "LOG_TAG", "NO_CARRIER", "REFRESH_TIME_FOR_EXTENDED_DEVICE_INFO_MILLIS", "URL_SCHEME", "UTF8", "availableExternalStorageGB", "", "carrierName", "currentLocale", "Ljava/util/Locale;", "getCurrentLocale", "()Ljava/util/Locale;", "dataProcessingOptions", "Lorg/json/JSONObject;", "getDataProcessingOptions", "()Lorg/json/JSONObject;", "deviceTimeZoneName", "deviceTimezoneAbbreviation", "isAutoAppLinkSetup", "", "isAutoAppLinkSetup$annotations", "()Z", "isDataProcessingRestricted", "numCPUCores", "resourceLocale", "getResourceLocale", "timestampOfLastCheck", "totalExternalStorageGB", "areObjectsEqual", "T", "a", C15291b.f55271a, "(Ljava/lang/Object;Ljava/lang/Object;)Z", "arrayList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "ts", "", "([Ljava/lang/Object;)Ljava/util/ArrayList;", "asListNoNulls", "", "array", "([Ljava/lang/Object;)Ljava/util/List;", "awaitGetGraphMeRequestWithCache", "accessToken", "buildUri", "Landroid/net/Uri;", "authority", "path", "parameters", "Landroid/os/Bundle;", "clearCaches", "", "clearCookiesForDomain", "context", "Landroid/content/Context;", "domain", "clearFacebookCookies", "closeQuietly", "closeable", "Ljava/io/Closeable;", "coerceValueIfNullOrEmpty", "s", "valueIfNullOrEmpty", "convertBytesToGB", "bytes", "", "convertJSONArrayToList", "jsonArray", "Lorg/json/JSONArray;", "convertJSONObjectToHashMap", "", "jsonObject", "convertJSONObjectToStringMap", "copyAndCloseInputStream", "inputStream", "Ljava/io/InputStream;", "outputStream", "Ljava/io/OutputStream;", "deleteDirectory", "directoryOrFile", "Ljava/io/File;", "disconnectQuietly", "connection", "Ljava/net/URLConnection;", "externalStorageExists", "filter", "target", "predicate", "Lcom/facebook/internal/Utility$Predicate;", "generateRandomString", "length", "getActivityName", "getAppName", "getAppVersion", "getBundleLongAsDate", "Ljava/util/Date;", "bundle", "key", "dateBase", "getContentSize", "contentUri", "getGraphMeRequestWithCache", "Lcom/facebook/GraphRequest;", "getGraphMeRequestWithCacheAsync", "callback", "Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "getMetadataApplicationId", "getMethodQuietly", "Ljava/lang/reflect/Method;", "clazz", "Ljava/lang/Class;", "methodName", "parameterTypes", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "className", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "getStringPropertyAsJSON", "nonJSONPropertyKey", "getUriString", "uri", "handlePermissionResponse", "Lcom/facebook/internal/Utility$PermissionsLists;", "result", "hasSameId", "hashBytes", "hash", "Ljava/security/MessageDigest;", "", "hashSet", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "([Ljava/lang/Object;)Ljava/util/HashSet;", "hashWithAlgorithm", "algorithm", "intersectRanges", "", "range1", "range2", "invokeMethodQuietly", "receiver", "method", "args", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "isAutofillAvailable", "isChromeOS", "isContentUri", "isCurrentAccessToken", "token", "Lcom/facebook/AccessToken;", "isFileUri", "isNullOrEmpty", Constants.URL_CAMPAIGN, "", "isSubset", "subset", "superset", "isWebUri", "jsonArrayToSet", "", "jsonArrayToStringList", "jsonStrToMap", "str", "logd", "tag", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "msg", "t", "", "map", "K", "mapper", "Lcom/facebook/internal/Utility$Mapper;", "mapToJsonStr", "md5hash", "mustFixWindowParamsForAutofill", "parseUrlQueryString", "queryString", "putCommaSeparatedStringList", "list", "putJSONValueInBundle", "value", "putNonEmptyString", "putUri", "readStreamToString", "readStringMapFromParcel", "parcel", "Landroid/os/Parcel;", "refreshAvailableExternalStorage", "refreshBestGuessNumberOfCPUCores", "refreshCarrierName", "appContext", "refreshPeriodicExtendedDeviceInfo", "refreshTimezone", "refreshTotalExternalStorage", "runOnNonUiThread", "runnable", "Ljava/lang/Runnable;", "safeGetStringFromResponse", Payload.RESPONSE, "propertyName", "setAppEventAttributionParameters", "params", "attributionIdentifiers", "Lcom/facebook/internal/AttributionIdentifiers;", "anonymousAppDeviceGUID", "limitEventUsage", "setAppEventExtendedDeviceInfoParameters", "sha1hash", "sha256hash", "stringsEqualOrEmpty", "tryGetJSONArrayFromResponse", "propertyKey", "tryGetJSONObjectFromResponse", "unmodifiableCollection", "([Ljava/lang/Object;)Ljava/util/Collection;", "writeStringMapToParcel", "GraphMeRequestWithCacheCallback", "Mapper", "PermissionsLists", "Predicate", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.ae */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/ae.class */
public final class C10213ae {

    /* renamed from: b */
    private static int f33660b;

    /* renamed from: a */
    public static final C10213ae f33659a = new C10213ae();

    /* renamed from: c */
    private static long f33661c = -1;

    /* renamed from: d */
    private static long f33662d = -1;

    /* renamed from: e */
    private static long f33663e = -1;

    /* renamed from: f */
    private static String f33664f = "";

    /* renamed from: g */
    private static String f33665g = "";

    /* renamed from: h */
    private static String f33666h = "NoCarrier";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\t"}, m4298d2 = {"Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "", "onFailure", "", "error", "Lcom/facebook/FacebookException;", "onSuccess", "userInfo", "Lorg/json/JSONObject;", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.ae$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ae$a.class */
    public interface AbstractC10214a {
        /* renamed from: a */
        void mo22902a(FacebookException facebookException);

        /* renamed from: a */
        void mo22901a(JSONObject jSONObject);
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\f\u0018��2\u00020\u0001B/\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0007R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006\u0010"}, m4298d2 = {"Lcom/facebook/internal/Utility$PermissionsLists;", "", "grantedPermissions", "", "", "declinedPermissions", "expiredPermissions", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getDeclinedPermissions", "()Ljava/util/List;", "setDeclinedPermissions", "(Ljava/util/List;)V", "getExpiredPermissions", "setExpiredPermissions", "getGrantedPermissions", "setGrantedPermissions", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.ae$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ae$b.class */
    public static final class C10215b {

        /* renamed from: a */
        public List<String> f33667a;

        /* renamed from: b */
        public List<String> f33668b;

        /* renamed from: c */
        public List<String> f33669c;

        public C10215b(List<String> grantedPermissions, List<String> declinedPermissions, List<String> expiredPermissions) {
            C18524p.m3840d(grantedPermissions, "grantedPermissions");
            C18524p.m3840d(declinedPermissions, "declinedPermissions");
            C18524p.m3840d(expiredPermissions, "expiredPermissions");
            this.f33667a = grantedPermissions;
            this.f33668b = declinedPermissions;
            this.f33669c = expiredPermissions;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", Payload.RESPONSE, "Lcom/facebook/GraphResponse;", "kotlin.jvm.PlatformType", "onCompleted"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.ae$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ae$c.class */
    public static final class C10216c implements GraphRequest.AbstractC9933b {

        /* renamed from: a */
        final /* synthetic */ AbstractC10214a f33670a;

        /* renamed from: b */
        final /* synthetic */ String f33671b;

        C10216c(AbstractC10214a abstractC10214a, String str) {
            this.f33670a = abstractC10214a;
            this.f33671b = str;
        }

        @Override // com.facebook.GraphRequest.AbstractC9933b
        /* renamed from: a */
        public final void mo22725a(C10351j response) {
            C18524p.m3843b(response, "response");
            if (response.m22936a() != null) {
                AbstractC10214a abstractC10214a = this.f33670a;
                FacebookRequestError m22936a = response.m22936a();
                C18524p.m3843b(m22936a, "response.error");
                abstractC10214a.mo22902a(m22936a.getException());
                return;
            }
            String str = this.f33671b;
            JSONObject m22932b = response.m22932b();
            C18524p.m3843b(m22932b, "response.jsonObject");
            C10209ab.m23259a(str, m22932b);
            this.f33670a.mo22901a(response.m22932b());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "dir", "Ljava/io/File;", "kotlin.jvm.PlatformType", "fileName", "", "accept"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.ae$d */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ae$d.class */
    public static final class C10217d implements FilenameFilter {

        /* renamed from: a */
        public static final C10217d f33672a = new C10217d();

        C10217d() {
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return Pattern.matches("cpu[0-9]+", str);
        }
    }

    private C10213ae() {
    }

    /* renamed from: a */
    public static final int m23235a(InputStream inputStream, OutputStream outputStream) throws IOException {
        Throwable th;
        int i;
        C18524p.m3840d(outputStream, "outputStream");
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
            try {
                byte[] bArr = new byte[PropertyFlags.UNSIGNED];
                int i2 = 0;
                while (true) {
                    i = i2;
                    int read = bufferedInputStream2.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, read);
                    i2 = i + read;
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

    /* renamed from: a */
    private static long m23249a(double d) {
        return Math.round(d / 1.073741824E9d);
    }

    /* renamed from: a */
    public static final Uri m23226a(String str, String str2, Bundle bundle) {
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
        C18524p.m3843b(build, "builder.build()");
        return build;
    }

    /* renamed from: a */
    public static final Object m23232a(Object obj, Method method, Object... args) {
        Object obj2;
        C18524p.m3840d(method, "method");
        C18524p.m3840d(args, "args");
        try {
            obj2 = method.invoke(obj, Arrays.copyOf(args, args.length));
        } catch (IllegalAccessException | InvocationTargetException e) {
            obj2 = null;
        }
        return obj2;
    }

    /* renamed from: a */
    public static final Object m23215a(JSONObject jsonObject, String str, String str2) throws JSONException {
        C18524p.m3840d(jsonObject, "jsonObject");
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
        if (str2 == null) {
            throw new FacebookException("Got an unexpected non-JSON object.");
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.putOpt(str2, obj);
        return jSONObject;
    }

    /* renamed from: a */
    public static final String m23248a(Context context) {
        C10218af.m23179a((Object) context, "context");
        String m23286m = C10181g.m23286m();
        C18524p.m3843b(m23286m, "FacebookSdk.getApplicationId()");
        return m23286m;
    }

    /* renamed from: a */
    public static final String m23236a(InputStream inputStream) throws IOException {
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
                        if (read == -1) {
                            String sb2 = sb.toString();
                            C18524p.m3843b(sb2, "stringBuilder.toString()");
                            m23238a((Closeable) bufferedInputStream);
                            m23238a(inputStreamReader);
                            return sb2;
                        }
                        sb.append(cArr, 0, read);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    m23238a((Closeable) bufferedInputStream);
                    m23238a(inputStreamReader);
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

    /* renamed from: a */
    public static final String m23227a(String str, String str2) {
        return m23230a(str) ? str2 : str;
    }

    /* renamed from: a */
    private static String m23224a(String str, byte[] bArr) {
        try {
            MessageDigest hash = MessageDigest.getInstance(str);
            C18524p.m3843b(hash, "hash");
            hash.update(bArr);
            byte[] digest = hash.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(Integer.toHexString((b >> 4) & 15));
                sb.append(Integer.toHexString((b >> 0) & 15));
            }
            String sb2 = sb.toString();
            C18524p.m3843b(sb2, "builder.toString()");
            return sb2;
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static final String m23221a(Map<String, String> map) {
        String str;
        C18524p.m3840d(map, "map");
        if (map.isEmpty()) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            str = jSONObject.toString();
        } catch (JSONException e) {
            str = "";
        }
        C18524p.m3843b(str, "try {\n        val jsonOb…ion) {\n        \"\"\n      }");
        return str;
    }

    /* renamed from: a */
    public static final String m23216a(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            String optString = jSONObject.optString(str, "");
            C18524p.m3843b(optString, "response.optString(propertyName, \"\")");
            return optString;
        }
        return "";
    }

    /* renamed from: a */
    public static final String m23214a(byte[] bytes) {
        C18524p.m3840d(bytes, "bytes");
        return m23224a("SHA-1", bytes);
    }

    /* renamed from: a */
    public static final Method m23234a(Class<?> clazz, String methodName, Class<?>... parameterTypes) {
        Method method;
        C18524p.m3840d(clazz, "clazz");
        C18524p.m3840d(methodName, "methodName");
        C18524p.m3840d(parameterTypes, "parameterTypes");
        try {
            method = clazz.getMethod(methodName, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
        } catch (NoSuchMethodException e) {
            method = null;
        }
        return method;
    }

    /* renamed from: a */
    public static final Method m23225a(String className, String methodName, Class<?>... parameterTypes) {
        Method method;
        C18524p.m3840d(className, "className");
        C18524p.m3840d(methodName, "methodName");
        C18524p.m3840d(parameterTypes, "parameterTypes");
        try {
            Class<?> cls = Class.forName(className);
            C18524p.m3843b(cls, "Class.forName(className)");
            method = m23234a(cls, methodName, (Class[]) Arrays.copyOf(parameterTypes, 1));
        } catch (ClassNotFoundException e) {
            method = null;
        }
        return method;
    }

    /* renamed from: a */
    public static final <T> Collection<T> m23213a(T... ts) {
        C18524p.m3840d(ts, "ts");
        Collection<T> unmodifiableCollection = Collections.unmodifiableCollection(Arrays.asList(Arrays.copyOf(ts, 2)));
        C18524p.m3843b(unmodifiableCollection, "Collections.unmodifiable…ction(Arrays.asList(*ts))");
        return unmodifiableCollection;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: a */
    public static final Date m23242a(Bundle bundle, String str, Date dateBase) {
        Date date;
        char c;
        C18524p.m3840d(dateBase, "dateBase");
        if (bundle == null) {
            return null;
        }
        Object obj = bundle.get(str);
        if (!(obj instanceof Long)) {
            date = null;
            if (obj instanceof String) {
                try {
                    c = Long.parseLong((String) obj);
                } catch (NumberFormatException e) {
                    date = null;
                }
            }
            return date;
        }
        c = ((Number) obj).longValue();
        if (c == 0) {
            return new Date(Long.MAX_VALUE);
        }
        date = new Date(dateBase.getTime() + (c * 1000));
        return date;
    }

    /* renamed from: a */
    public static final List<String> m23220a(JSONArray jsonArray) {
        ArrayList arrayList;
        C18524p.m3840d(jsonArray, "jsonArray");
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
                C18524p.m3843b(string, "jsonArray.getString(i)");
                arrayList2.add(string);
                i++;
            }
        } catch (JSONException e) {
            arrayList = new ArrayList();
        }
        return arrayList;
    }

    /* renamed from: a */
    public static final Map<String, String> m23241a(Parcel parcel) {
        C18524p.m3840d(parcel, "parcel");
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

    /* renamed from: a */
    public static final Map<String, String> m23219a(JSONObject jsonObject) {
        C18524p.m3840d(jsonObject, "jsonObject");
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jsonObject.keys();
        while (keys.hasNext()) {
            String key = keys.next();
            String optString = jsonObject.optString(key);
            if (optString != null) {
                C18524p.m3843b(key, "key");
                hashMap.put(key, optString);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static final void m23250a() {
        C10181g.m23297c();
    }

    /* renamed from: a */
    private static void m23247a(Context context, String str) {
        List a;
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie == null) {
            return;
        }
        Object[] array = C18425p.m3934a((CharSequence) cookie, new String[]{";"}, false, 0).toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        for (String str2 : (String[]) array) {
            a = C18425p.m3934a(str2, new String[]{"="}, false, 0);
            Object[] array2 = a.toArray(new String[0]);
            Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array2;
            if (strArr.length > 0) {
                StringBuilder sb = new StringBuilder();
                String str3 = strArr[0];
                int length = str3.length() - 1;
                int i = 0;
                boolean z = false;
                while (i <= length) {
                    boolean z2 = C18524p.m3854a(str3.charAt(!z ? i : length), 32) <= 0;
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
                cookieManager.setCookie(str, sb.toString());
            }
        }
        cookieManager.removeExpiredCookie();
    }

    /* renamed from: a */
    public static final void m23245a(Bundle b, String str, Uri uri) {
        C18524p.m3840d(b, "b");
        if (uri != null) {
            m23243a(b, str, uri.toString());
        }
    }

    /* renamed from: a */
    public static final void m23243a(Bundle b, String str, String str2) {
        C18524p.m3840d(b, "b");
        if (!m23230a(str2)) {
            b.putString(str, str2);
        }
    }

    /* renamed from: a */
    public static final void m23240a(Parcel parcel, Map<String, String> map) {
        C18524p.m3840d(parcel, "parcel");
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

    /* renamed from: a */
    public static final void m23238a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static final void m23237a(File file) {
        File[] listFiles;
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                m23237a(file2);
            }
        }
        file.delete();
    }

    /* renamed from: a */
    public static final void m23231a(Runnable runnable) {
        try {
            C10181g.m23293f().execute(runnable);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static final void m23229a(String accessToken, AbstractC10214a callback) {
        C18524p.m3840d(accessToken, "accessToken");
        C18524p.m3840d(callback, "callback");
        JSONObject m23260a = C10209ab.m23260a(accessToken);
        if (m23260a != null) {
            callback.mo22901a(m23260a);
            return;
        }
        C10216c c10216c = new C10216c(callback, accessToken);
        GraphRequest m23185h = m23185h(accessToken);
        m23185h.m23798a((GraphRequest.AbstractC9933b) c10216c);
        m23185h.m23778c();
    }

    /* renamed from: a */
    public static final void m23228a(String str, Exception exc) {
        if (!C10181g.m23297c() || str == null || exc == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(exc.getClass().getSimpleName());
        sb.append(": ");
        sb.append(exc.getMessage());
    }

    /* renamed from: a */
    public static final void m23223a(URLConnection uRLConnection) {
        if (uRLConnection == null || !(uRLConnection instanceof HttpURLConnection)) {
            return;
        }
        ((HttpURLConnection) uRLConnection).disconnect();
    }

    /* JADX WARN: Type inference failed for: r0v78, types: [double] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x02d5 -> B:77:0x010d). Please submit an issue!!! */
    /* renamed from: a */
    public static final void m23218a(JSONObject params, Context appContext) throws JSONException {
        String str;
        Locale locale;
        int i;
        int i2;
        Object systemService;
        PackageInfo packageInfo;
        C18524p.m3840d(params, "params");
        C18524p.m3840d(appContext, "appContext");
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("a2");
        if (f33661c == -1 || System.currentTimeMillis() - f33661c >= 1800000) {
            f33661c = System.currentTimeMillis();
            try {
                TimeZone tz = TimeZone.getDefault();
                String displayName = tz.getDisplayName(tz.inDaylightTime(new Date()), 0);
                C18524p.m3843b(displayName, "tz.getDisplayName(tz.inD…(Date()), TimeZone.SHORT)");
                f33664f = displayName;
                C18524p.m3843b(tz, "tz");
                String id = tz.getID();
                C18524p.m3843b(id, "tz.id");
                f33665g = id;
            } catch (AssertionError | Exception e) {
            }
            if (C18524p.m3850a((Object) f33666h, (Object) "NoCarrier")) {
                try {
                    Object systemService2 = appContext.getSystemService(com.callapp.contacts.model.Constants.EXTRA_PHONE_NUMBER);
                    if (systemService2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
                    }
                    String networkOperatorName = ((TelephonyManager) systemService2).getNetworkOperatorName();
                    C18524p.m3843b(networkOperatorName, "telephonyManager.networkOperatorName");
                    f33666h = networkOperatorName;
                } catch (Exception e2) {
                }
            }
            try {
                if (m23183j()) {
                    File path = Environment.getExternalStorageDirectory();
                    C18524p.m3843b(path, "path");
                    StatFs statFs = new StatFs(path.getPath());
                    f33662d = statFs.getBlockCount() * statFs.getBlockSize();
                }
                f33662d = m23249a(f33662d);
            } catch (Exception e3) {
            }
            try {
                if (m23183j()) {
                    File path2 = Environment.getExternalStorageDirectory();
                    C18524p.m3843b(path2, "path");
                    StatFs statFs2 = new StatFs(path2.getPath());
                    f33663e = statFs2.getAvailableBlocks() * statFs2.getBlockSize();
                }
                f33663e = m23249a(f33663e);
            } catch (Exception e4) {
            }
        }
        String packageName = appContext.getPackageName();
        int i3 = -1;
        try {
            packageInfo = appContext.getPackageManager().getPackageInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException e5) {
            str = "";
        }
        if (packageInfo == null) {
            return;
        }
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
            C18524p.m3843b(resources, "appContext.resources");
            locale = resources.getConfiguration().locale;
        } catch (Exception e6) {
            locale = Locale.getDefault();
        }
        StringBuilder sb = new StringBuilder();
        Locale locale2 = locale;
        C18524p.m3843b(locale2, "locale");
        sb.append(locale.getLanguage());
        sb.append("_");
        sb.append(locale.getCountry());
        jSONArray.put(sb.toString());
        jSONArray.put(f33664f);
        jSONArray.put(f33666h);
        char c = 0;
        try {
            systemService = appContext.getSystemService("window");
        } catch (Exception e7) {
            i = 0;
        }
        if (systemService == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.WindowManager");
        }
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
                    c = displayMetrics.density;
                } catch (Exception e8) {
                }
            } catch (Exception e9) {
            }
            jSONArray.put(i);
            jSONArray.put(i2);
            jSONArray.put(new DecimalFormat("#.##").format((double) c));
            jSONArray.put(m23184i());
            jSONArray.put(f33662d);
            jSONArray.put(f33663e);
            jSONArray.put(f33665g);
            params.put("extinfo", jSONArray.toString());
        }
        i2 = 0;
        jSONArray.put(i);
        jSONArray.put(i2);
        jSONArray.put(new DecimalFormat("#.##").format((double) c));
        jSONArray.put(m23184i());
        jSONArray.put(f33662d);
        jSONArray.put(f33663e);
        jSONArray.put(f33665g);
        params.put("extinfo", jSONArray.toString());
    }

    /* renamed from: a */
    public static final void m23217a(JSONObject params, C10234b c10234b, String str, boolean z) throws JSONException {
        C18524p.m3840d(params, "params");
        params.put("anon_id", str);
        boolean z2 = true;
        params.put("application_tracking_enabled", !z);
        params.put("advertiser_id_collection_enabled", C10181g.m23281r());
        if (c10234b != null) {
            if (c10234b.f33726a != null) {
                params.put("attribution", c10234b.f33726a);
            }
            if (c10234b.m23140a() != null) {
                params.put("advertiser_id", c10234b.m23140a());
                params.put("advertiser_tracking_enabled", !c10234b.f33728c);
            }
            if (!c10234b.f33728c) {
                String userData = C10102p.m23400b();
                C18524p.m3843b(userData, "userData");
                if (userData.length() != 0) {
                    z2 = false;
                }
                if (!z2) {
                    params.put("ud", userData);
                }
            }
            if (c10234b.f33727b == null) {
                return;
            }
            params.put("installer_package", c10234b.f33727b);
        }
    }

    /* renamed from: a */
    public static final boolean m23246a(Uri uri) {
        if (uri != null) {
            return C18425p.m3961a("http", uri.getScheme()) || C18425p.m3961a(com.mopub.common.Constants.HTTPS, uri.getScheme()) || C18425p.m3961a("fbstaging", uri.getScheme());
        }
        return false;
    }

    /* renamed from: a */
    public static final boolean m23244a(Bundle bundle, String str, Object obj) {
        C18524p.m3840d(bundle, "bundle");
        bundle.putString(str, obj.toString());
        return true;
    }

    /* renamed from: a */
    public static final boolean m23239a(AccessToken accessToken) {
        return accessToken != null && C18524p.m3850a(accessToken, AccessToken.getCurrentAccessToken());
    }

    /* renamed from: a */
    public static final <T> boolean m23233a(T t, T t2) {
        return t == null ? t2 == null : C18524p.m3850a(t, t2);
    }

    /* renamed from: a */
    public static final boolean m23230a(String str) {
        if (str != null) {
            return str.length() == 0;
        }
        return true;
    }

    /* renamed from: a */
    public static final <T> boolean m23222a(Collection<? extends T> collection) {
        return collection == null || collection.isEmpty();
    }

    /* renamed from: b */
    public static final C10215b m23206b(JSONObject result) throws JSONException {
        String optString;
        C18524p.m3840d(result, "result");
        JSONArray jSONArray = result.getJSONObject("permissions").getJSONArray("data");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        ArrayList arrayList2 = new ArrayList(jSONArray.length());
        ArrayList arrayList3 = new ArrayList(jSONArray.length());
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString2 = optJSONObject.optString("permission");
            if (optString2 != null && !C18524p.m3850a((Object) optString2, (Object) "installed") && (optString = optJSONObject.optString("status")) != null) {
                if (C18524p.m3850a((Object) optString, (Object) "granted")) {
                    arrayList.add(optString2);
                } else if (C18524p.m3850a((Object) optString, (Object) "declined")) {
                    arrayList2.add(optString2);
                } else if (C18524p.m3850a((Object) optString, (Object) "expired")) {
                    arrayList3.add(optString2);
                }
            }
        }
        return new C10215b(arrayList, arrayList2, arrayList3);
    }

    /* renamed from: b */
    public static final String m23212b() {
        Context m23290i = C10181g.m23290i();
        if (m23290i == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = m23290i.getPackageManager().getPackageInfo(m23290i.getPackageName(), 0);
            if (packageInfo != null) {
                return packageInfo.versionName;
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static final String m23209b(String key) {
        C18524p.m3840d(key, "key");
        return f33659a.m23208b("MD5", key);
    }

    /* renamed from: b */
    private final String m23208b(String str, String str2) {
        Charset charset = C18405d.f63516a;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str2.getBytes(charset);
        C18524p.m3843b(bytes, "(this as java.lang.String).getBytes(charset)");
        return m23224a(str, bytes);
    }

    /* renamed from: b */
    public static final List<String> m23207b(JSONArray jsonArray) throws JSONException {
        C18524p.m3840d(jsonArray, "jsonArray");
        ArrayList arrayList = new ArrayList();
        int length = jsonArray.length();
        for (int i = 0; i < length; i++) {
            arrayList.add(jsonArray.getString(i));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static final <T> List<T> m23204b(T... array) {
        C18524p.m3840d(array, "array");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 2; i++) {
            T t = array[i];
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static final JSONObject m23205b(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(str);
        }
        return null;
    }

    /* renamed from: b */
    public static final void m23211b(Context context) {
        C18524p.m3840d(context, "context");
        m23247a(context, "facebook.com");
        m23247a(context, ".facebook.com");
        m23247a(context, "https://facebook.com");
        m23247a(context, "https://.facebook.com");
    }

    /* renamed from: b */
    public static final boolean m23210b(Uri uri) {
        return uri != null && C18425p.m3961a(com.mopub.common.Constants.VAST_TRACKER_CONTENT, uri.getScheme());
    }

    /* renamed from: c */
    public static final String m23203c() {
        String bigInteger = new BigInteger(100, new Random()).toString(32);
        C18524p.m3843b(bigInteger, "BigInteger(length * 5, r).toString(32)");
        return bigInteger;
    }

    /* renamed from: c */
    public static final String m23202c(Context context) {
        if (context == null) {
            return JsonReaderKt.NULL;
        }
        if (context == context.getApplicationContext()) {
            return "unknown";
        }
        String simpleName = context.getClass().getSimpleName();
        C18524p.m3843b(simpleName, "context.javaClass.simpleName");
        return simpleName;
    }

    /* renamed from: c */
    public static final String m23200c(String str) {
        if (str == null) {
            return null;
        }
        return f33659a.m23208b("SHA-256", str);
    }

    /* renamed from: c */
    public static final JSONArray m23199c(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONArray(str);
        }
        return null;
    }

    /* renamed from: c */
    public static final boolean m23201c(Uri uri) {
        return uri != null && C18425p.m3961a("file", uri.getScheme());
    }

    /* renamed from: d */
    public static final long m23196d(Uri contentUri) {
        C18524p.m3840d(contentUri, "contentUri");
        Cursor cursor = null;
        try {
            Context m23290i = C10181g.m23290i();
            C18524p.m3843b(m23290i, "FacebookSdk.getApplicationContext()");
            Cursor query = m23290i.getContentResolver().query(contentUri, null, null, null, null);
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

    /* renamed from: d */
    public static final Bundle m23195d(String str) {
        List a;
        List a2;
        Bundle bundle = new Bundle();
        if (!m23230a(str)) {
            if (str == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            a = C18425p.m3934a(str, new String[]{"&"}, false, 0);
            Object[] array = a.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            for (String str2 : (String[]) array) {
                a2 = C18425p.m3934a(str2, new String[]{"="}, false, 0);
                Object[] array2 = a2.toArray(new String[0]);
                Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
                String[] strArr = (String[]) array2;
                try {
                    if (strArr.length == 2) {
                        bundle.putString(URLDecoder.decode(strArr[0], "UTF-8"), URLDecoder.decode(strArr[1], "UTF-8"));
                    } else if (strArr.length == 1) {
                        bundle.putString(URLDecoder.decode(strArr[0], "UTF-8"), "");
                    }
                } catch (UnsupportedEncodingException e) {
                    m23228a("FacebookSDK", (Exception) e);
                }
            }
        }
        return bundle;
    }

    /* renamed from: d */
    public static final Locale m23198d() {
        Locale locale;
        try {
            Context m23290i = C10181g.m23290i();
            C18524p.m3843b(m23290i, "FacebookSdk.getApplicationContext()");
            Resources resources = m23290i.getResources();
            C18524p.m3843b(resources, "FacebookSdk.getApplicationContext().resources");
            locale = resources.getConfiguration().locale;
        } catch (Exception e) {
            locale = null;
        }
        return locale;
    }

    /* renamed from: d */
    public static final boolean m23197d(Context context) {
        AutofillManager autofillManager;
        C18524p.m3840d(context, "context");
        C18524p.m3840d(context, "context");
        return Build.VERSION.SDK_INT >= 26 && (autofillManager = (AutofillManager) context.getSystemService(AutofillManager.class)) != null && autofillManager.isAutofillSupported() && autofillManager.isEnabled();
    }

    /* renamed from: e */
    public static final Locale m23194e() {
        Locale m23198d = m23198d();
        Locale locale = m23198d;
        if (m23198d == null) {
            locale = Locale.getDefault();
            C18524p.m3843b(locale, "Locale.getDefault()");
        }
        return locale;
    }

    /* renamed from: e */
    public static final void m23192e(String str) {
        if (C10181g.m23297c()) {
            m23230a(str);
        }
    }

    /* renamed from: e */
    public static final boolean m23193e(Context context) {
        C18524p.m3840d(context, "context");
        if (Build.VERSION.SDK_INT >= 27) {
            return context.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        }
        if (Build.DEVICE == null) {
            return false;
        }
        String str = Build.DEVICE;
        C18524p.m3843b(str, "Build.DEVICE");
        return new C18418l(".+_cheets|cheets_.+").m3986a(str);
    }

    /* renamed from: f */
    public static final String m23190f(Context context) {
        String str;
        String m23285n;
        C18524p.m3840d(context, "context");
        try {
            m23285n = C10181g.m23285n();
        } catch (Exception e) {
            str = "";
        }
        if (m23285n != null) {
            return m23285n;
        }
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        int i = applicationInfo.labelRes;
        if (i == 0) {
            str = applicationInfo.nonLocalizedLabel.toString();
        } else {
            str = context.getString(i);
            C18524p.m3843b(str, "context.getString(stringId)");
        }
        return str;
    }

    /* renamed from: f */
    public static final Map<String, String> m23189f(String str) {
        HashMap hashMap;
        C18524p.m3840d(str, "str");
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
                C18524p.m3843b(key, "key");
                String string = jSONObject.getString(key);
                C18524p.m3843b(string, "jsonObject.getString(key)");
                hashMap2.put(key, string);
            }
        } catch (JSONException e) {
            hashMap = new HashMap();
        }
        return hashMap;
    }

    /* renamed from: f */
    public static final boolean m23191f() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            C18500ag c18500ag = C18500ag.f63594a;
            String format = String.format("fb%s://applinks", Arrays.copyOf(new Object[]{C10181g.m23286m()}, 1));
            C18524p.m3843b(format, "java.lang.String.format(format, *args)");
            intent.setData(Uri.parse(format));
            Context ctx = C10181g.m23290i();
            C18524p.m3843b(ctx, "ctx");
            PackageManager packageManager = ctx.getPackageManager();
            String packageName = ctx.getPackageName();
            Iterator<ResolveInfo> it2 = packageManager.queryIntentActivities(intent, 65536).iterator();
            do {
                if (!it2.hasNext()) {
                    return false;
                }
            } while (!C18524p.m3850a((Object) packageName, (Object) it2.next().activityInfo.packageName));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: g */
    public static final JSONObject m23188g() {
        if (C10249a.m23108a(C10213ae.class)) {
            return null;
        }
        try {
            String string = C10181g.m23290i().getSharedPreferences("com.facebook.sdk.DataProcessingOptions", 0).getString("data_processing_options", null);
            if (string == null) {
                return null;
            }
            try {
                return new JSONObject(string);
            } catch (JSONException e) {
                return null;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10213ae.class);
            return null;
        }
    }

    /* renamed from: g */
    public static final JSONObject m23187g(String accessToken) {
        C18524p.m3840d(accessToken, "accessToken");
        JSONObject m23260a = C10209ab.m23260a(accessToken);
        if (m23260a != null) {
            return m23260a;
        }
        C10351j response = m23185h(accessToken).m23781b();
        C18524p.m3843b(response, "response");
        if (response.m22936a() == null) {
            return response.m22932b();
        }
        return null;
    }

    /* renamed from: h */
    private static GraphRequest m23185h(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,name,first_name,middle_name,last_name");
        bundle.putString(AccessToken.ACCESS_TOKEN_KEY, str);
        return new GraphRequest(null, "me", bundle, EnumC10352k.GET, null);
    }

    /* renamed from: h */
    public static final boolean m23186h() {
        if (C10249a.m23108a(C10213ae.class)) {
            return false;
        }
        try {
            JSONObject m23188g = m23188g();
            if (m23188g == null) {
                return false;
            }
            try {
                JSONArray jSONArray = m23188g.getJSONArray("data_processing_options");
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    String string = jSONArray.getString(i);
                    C18524p.m3843b(string, "options.getString(i)");
                    if (string == null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                    }
                    String lowerCase = string.toLowerCase();
                    C18524p.m3843b(lowerCase, "(this as java.lang.String).toLowerCase()");
                    if (C18524p.m3850a((Object) lowerCase, (Object) "ldu")) {
                        return true;
                    }
                }
                return false;
            } catch (Exception e) {
                return false;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10213ae.class);
            return false;
        }
    }

    /* renamed from: i */
    private static int m23184i() {
        int i = f33660b;
        if (i > 0) {
            return i;
        }
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(C10217d.f33672a);
            if (listFiles != null) {
                f33660b = listFiles.length;
            }
        } catch (Exception e) {
        }
        if (f33660b <= 0) {
            f33660b = Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        return f33660b;
    }

    /* renamed from: j */
    private static boolean m23183j() {
        return C18524p.m3850a((Object) "mounted", (Object) Environment.getExternalStorageState());
    }
}
