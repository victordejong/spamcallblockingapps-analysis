package com.taiwanmobile.p055pt.adp.view.webview.mraid;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.mopub.common.AdType;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidOrientationProperties;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLDecoder;
import java.text.ParseException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidProcessor */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidProcessor.class */
public class MraidProcessor {
    public static final String TAG = "MraidProcessor";

    /* renamed from: a */
    public WeakReference<JSWebView> f10108a;

    /* renamed from: e */
    public final String f10112e;

    /* renamed from: b */
    public MraidStates f10109b = MraidStates.LOADING;

    /* renamed from: c */
    public MraidPlacementType f10110c = MraidPlacementType.INLINE;

    /* renamed from: d */
    public boolean f10111d = false;

    /* renamed from: f */
    public MraidOrientationProperties f10113f = new MraidOrientationProperties();

    /* renamed from: g */
    public MraidLayoutExpandHandler f10114g = null;

    /* renamed from: h */
    public MraidLayoutResizeHandler f10115h = null;

    /* renamed from: i */
    public DisplayMetrics f10116i = new DisplayMetrics();

    /* renamed from: j */
    public Rect f10117j = new Rect();

    /* renamed from: k */
    public Rect f10118k = new Rect();

    /* renamed from: l */
    public RelativeLayout f10119l = null;

    /* renamed from: m */
    public C4206b f10120m = new C4206b();

    /* renamed from: n */
    public C4206b f10121n = new C4206b();

    /* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidProcessor$4 */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidProcessor$4.class */
    public static /* synthetic */ class C42044 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10127a = new int[MraidOrientationProperties.Orientation.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f10127a[MraidOrientationProperties.Orientation.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10127a[MraidOrientationProperties.Orientation.PORTRAIT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10127a[MraidOrientationProperties.Orientation.LANDSCAPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidProcessor$MraidPlacementType */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidProcessor$MraidPlacementType.class */
    public enum MraidPlacementType {
        INLINE("inline"),
        INTERSTITIAL(AdType.INTERSTITIAL),
        INREAD("inread");
        

        /* renamed from: a */
        public final String f10129a;

        MraidPlacementType(String str) {
            this.f10129a = str;
        }

        public String getString() {
            return this.f10129a;
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidProcessor$MraidStates */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidProcessor$MraidStates.class */
    public enum MraidStates {
        LOADING("loading"),
        DEFAULT("default"),
        EXPANDED("expanded"),
        RESIZED("resized"),
        HIDEEEN("hidden");
        

        /* renamed from: a */
        public final String f10131a;

        MraidStates(String str) {
            this.f10131a = str;
        }

        public String getString() {
            return this.f10131a;
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidProcessor$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidProcessor$a.class */
    public class AsyncTaskC4205a extends AsyncTask<String, Void, Bitmap> {

        /* renamed from: b */
        public Context f10133b;

        /* renamed from: c */
        public final List<String> f10134c = Arrays.asList("jpg", "jpeg", "png", "gif", "bmp", "tif");

        public AsyncTaskC4205a(Context context) {
            this.f10133b = context;
        }

        /* renamed from: a */
        private String m29337a(URL url) {
            String file = url.getFile();
            return file.substring(file.lastIndexOf(47) + 1).split("\\?")[0].split("#")[0];
        }

        /* renamed from: a */
        private void m29338a(String str, String str2) {
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setAllowedNetworkTypes(3);
            request.setAllowedOverRoaming(false);
            request.setTitle(str2);
            request.setDescription("");
            request.setVisibleInDownloadsUi(true);
            String str3 = Environment.DIRECTORY_DOWNLOADS;
            request.setDestinationInExternalPublicDir(str3, "/" + str2);
            ((DownloadManager) this.f10133b.getSystemService("download")).enqueue(request);
        }

        /* renamed from: a */
        public Bitmap doInBackground(String... strArr) {
            String str = strArr[0];
            try {
                String[] split = m29337a(new URL(str)).split("\\.");
                int length = split.length;
                if (length <= 0 || !this.f10134c.contains(split[length - 1].toLowerCase())) {
                    throw new Exception("The URL is not a image file.");
                }
                m29338a(str, split[split.length - 1]);
                return null;
            } catch (Exception e) {
                String str2 = MraidProcessor.TAG;
                C10831c.m10520b(str2, "DownloadImageTask Failed. Exception: " + e.getMessage());
                return null;
            }
        }

        /* renamed from: a */
        public void onPostExecute(Bitmap bitmap) {
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidProcessor$b */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidProcessor$b.class */
    public final class C4206b {

        /* renamed from: a */
        public int f10135a;

        /* renamed from: b */
        public int f10136b;

        public C4206b() {
        }
    }

    public MraidProcessor(JSWebView jSWebView, String str) {
        this.f10108a = new WeakReference<>(jSWebView);
        this.f10112e = str;
    }

    /* renamed from: a */
    private RelativeLayout m29351a(String str) {
        C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str);
        if (bVar == null) {
            return null;
        }
        try {
            return (RelativeLayout) bVar.m29659a("mraidDefaultLayout");
        } catch (Exception e) {
            String str2 = TAG;
            C10831c.m10520b(str2, "getDefaultLayout error: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    private void m29354a() {
        if (this.f10108a.get().getContext() != null) {
            this.f10108a.get().injectJavaScript(MraidJS.buildMraidVariable(this.f10108a.get().getContext()));
        }
    }

    /* renamed from: a */
    private void m29350a(String str, RelativeLayout relativeLayout) {
        C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str);
        if (bVar != null) {
            bVar.m29658a("mraidDefaultLayout", relativeLayout);
        } else {
            C10831c.m10518c(TAG, "setDefaultLayout failed. HashMap is not exist !");
        }
    }

    /* renamed from: a */
    private void m29349a(String str, MraidLayoutExpandHandler mraidLayoutExpandHandler) {
        C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str);
        if (bVar != null) {
            bVar.m29658a("mraidExpandHandler", mraidLayoutExpandHandler);
        } else {
            C10831c.m10518c(TAG, "setExpandedHandler failed. HashMap is not exist !");
        }
    }

    /* renamed from: a */
    private boolean m29353a(View view, boolean z) {
        boolean z2;
        Activity a = C10832d.m10506a(this.f10108a.get());
        if (a != null) {
            C10831c.m10518c(TAG, "calculatePosition status bar height = " + C10832d.m10480g(a));
            C10831c.m10518c(TAG, "calculatePosition title bar height = " + C10832d.m10477h(a));
            C10831c.m10518c(TAG, "calculatePosition action bar height = " + C10832d.m10474i(a));
            int g = C10832d.m10480g(a);
            int h = C10832d.m10477h(a);
            int i = C10832d.m10474i(a);
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            C10831c.m10518c(TAG, "calculatePosition locationOnScreen [" + i2 + "," + i3 + "]");
            int i4 = i3 - ((g + h) + i);
            int width = view.getWidth();
            int height = view.getHeight();
            C10831c.m10518c(TAG, "calculatePosition position [" + i2 + "," + i4 + "] (" + width + "x" + height + ")");
            Rect rect = z ? this.f10118k : this.f10117j;
            if (!(i2 == rect.left && i4 == rect.top && width == rect.width() && height == rect.height())) {
                if (z) {
                    this.f10118k = new Rect(i2, i4, width + i2, height + i4);
                    z2 = true;
                } else {
                    this.f10117j = new Rect(i2, i4, width + i2, height + i4);
                    z2 = true;
                }
                return z2;
            }
        }
        z2 = false;
        return z2;
    }

    /* renamed from: b */
    private MraidLayoutExpandHandler m29346b(String str) {
        C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str);
        if (bVar == null) {
            return null;
        }
        try {
            return (MraidLayoutExpandHandler) bVar.m29659a("mraidExpandHandler");
        } catch (Exception e) {
            String str2 = TAG;
            C10831c.m10520b(str2, "getExpandedHandler error: " + e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m29348b() {
        if (m29340g()) {
            setScreenSize();
        }
        if (m29341f()) {
            setMaxSize();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m29345c() {
        RelativeLayout relativeLayout = this.f10119l;
        if (relativeLayout != null && m29353a((View) relativeLayout, true)) {
            setDefaultPosition();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m29343d() {
        WeakReference<JSWebView> weakReference = this.f10108a;
        if (weakReference != null && weakReference.get() != null && m29353a((View) this.f10108a.get(), false)) {
            setCurrentPosition();
            if (this.f10110c != MraidPlacementType.INLINE) {
                this.f10118k = this.f10117j;
                setDefaultPosition();
            }
        }
    }

    /* renamed from: e */
    private void m29342e() {
        this.f10119l = m29351a(this.f10112e);
        if (this.f10119l == null) {
            this.f10119l = new RelativeLayout(this.f10108a.get().getContext());
            this.f10119l.setLayoutParams(new RelativeLayout.LayoutParams(this.f10108a.get().getLayoutParams()));
            if (this.f10108a.get().getParent() != null) {
                ((ViewGroup) this.f10108a.get().getParent()).addView(this.f10119l);
                m29345c();
                this.f10119l.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.taiwanmobile.pt.adp.view.webview.mraid.MraidProcessor.3
                    @Override // android.view.View.OnLayoutChangeListener
                    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                        MraidProcessor.this.m29345c();
                    }
                });
            }
            m29350a(this.f10112e, this.f10119l);
        }
    }

    /* renamed from: f */
    private boolean m29341f() {
        boolean z;
        Activity a = C10832d.m10506a(this.f10108a.get());
        if (a != null) {
            Rect rect = new Rect();
            a.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            String str = TAG;
            C10831c.m10518c(str, "calculateMaxSize frame [" + rect.left + "," + rect.top + "][" + rect.right + "," + rect.bottom + "] (" + rect.width() + "x" + rect.height() + ")");
            String str2 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("calculateMaxSize status bar height = ");
            sb.append(C10832d.m10480g(a));
            C10831c.m10518c(str2, sb.toString());
            String str3 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("calculateMaxSize title bar height = ");
            sb2.append(C10832d.m10477h(a));
            C10831c.m10518c(str3, sb2.toString());
            String str4 = TAG;
            C10831c.m10518c(str4, "calculateMaxSize action bar height = " + C10832d.m10474i(a));
            int g = C10832d.m10480g(a);
            int h = C10832d.m10477h(a);
            int i = C10832d.m10474i(a);
            int width = rect.width();
            int i2 = this.f10121n.f10136b - ((g + h) + i);
            String str5 = TAG;
            C10831c.m10518c(str5, "calculateMaxSize max size " + width + "x" + i2);
            C4206b bVar = this.f10120m;
            if (!(width == bVar.f10135a && i2 == bVar.f10136b)) {
                C4206b bVar2 = this.f10120m;
                bVar2.f10135a = width;
                bVar2.f10136b = i2;
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: g */
    private boolean m29340g() {
        boolean z;
        Activity a = C10832d.m10506a(this.f10108a.get());
        if (a != null) {
            a.getWindowManager().getDefaultDisplay().getMetrics(this.f10116i);
            DisplayMetrics displayMetrics = this.f10116i;
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            String str = TAG;
            C10831c.m10518c(str, "calculateScreenSize: width = " + i + ", height = " + i2);
            C4206b bVar = this.f10121n;
            if (!(i == bVar.f10135a && i2 == bVar.f10136b)) {
                C4206b bVar2 = this.f10121n;
                bVar2.f10135a = i;
                bVar2.f10136b = i2;
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public static boolean isMraidAd(String str) {
        C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str);
        if (bVar == null) {
            return false;
        }
        try {
            return ((Boolean) bVar.m29659a("isMraid")).booleanValue();
        } catch (Exception e) {
            C10831c.m10518c(TAG, "The key 'KEY_IS_MRAID' does not contain boolean value.");
            return false;
        }
    }

    public void close() {
        MraidLayoutResizeHandler mraidLayoutResizeHandler;
        MraidLayoutExpandHandler mraidLayoutExpandHandler;
        C10831c.m10518c(TAG, "MraidProcessor.close invoke !!");
        if (this.f10109b == MraidStates.EXPANDED && (mraidLayoutExpandHandler = this.f10114g) != null && !mraidLayoutExpandHandler.isTwoPart()) {
            RelativeLayout relativeLayout = this.f10119l;
            if (relativeLayout != null) {
                this.f10114g.restore(relativeLayout);
                fireStateChangeEvent(MraidStates.DEFAULT);
                return;
            }
            C10831c.m10520b(TAG, "mraid.close() invoke, but defaultLayout is null");
        } else if (this.f10109b != MraidStates.RESIZED || (mraidLayoutResizeHandler = this.f10115h) == null) {
            WeakReference<JSWebView> weakReference = this.f10108a;
            if (weakReference == null || weakReference.get() == null) {
                fireErrorEvent("The WebView already died.", MraidParser.MRAID_COMMAND_CLOSE);
            } else {
                this.f10108a.get().injectJavaScript("android.closeWebView()");
            }
        } else {
            RelativeLayout relativeLayout2 = this.f10119l;
            if (relativeLayout2 != null) {
                mraidLayoutResizeHandler.restore(relativeLayout2);
                fireStateChangeEvent(MraidStates.DEFAULT);
                return;
            }
            C10831c.m10520b(TAG, "mraid.close() invoke, but defaultLayout is null");
        }
    }

    @TargetApi(14)
    public void createCalendarEvent(Map<String, String> map) {
        if (map != null && map.containsKey(MraidParser.MRAID_PARAM_EVENT_JSON)) {
            String str = map.get(MraidParser.MRAID_PARAM_EVENT_JSON);
            try {
                MraidCalendarHandler mraidCalendarHandler = new MraidCalendarHandler();
                mraidCalendarHandler.parseCalendarString(str);
                if (this.f10108a != null && this.f10108a.get() != null) {
                    mraidCalendarHandler.addCalendarEvent(this.f10108a.get());
                }
            } catch (ActivityNotFoundException e) {
                String str2 = TAG;
                C10831c.m10520b(str2, "MraidProcessor.createCalendarEvent Open Calendar Activity Error: " + e.getMessage());
                Toast.makeText(this.f10108a.get().getContext(), "手機不支援行事曆功能!!", 0).show();
                fireErrorEvent("Open Calendar Activity Error: " + e.getMessage(), MraidParser.MRAID_COMMAND_CREATE_CALENDAR_EVENT);
            } catch (UnsupportedEncodingException e2) {
                String str3 = TAG;
                C10831c.m10520b(str3, "MraidProcessor.createCalendarEvent Decode Error: " + e2.getMessage());
                fireErrorEvent("Decode Error: " + e2.getMessage(), MraidParser.MRAID_COMMAND_CREATE_CALENDAR_EVENT);
            } catch (Exception e3) {
                String str4 = TAG;
                C10831c.m10520b(str4, "MraidProcessor.createCalendarEvent Exception Error: " + e3.getMessage());
                fireErrorEvent(" Exception Error: " + e3.getMessage(), MraidParser.MRAID_COMMAND_CREATE_CALENDAR_EVENT);
            } catch (NoClassDefFoundError e4) {
                String str5 = TAG;
                C10831c.m10520b(str5, "MraidProcessor.createCalendarEvent Add Calendar Content Error: " + e4.getMessage());
                Toast.makeText(this.f10108a.get().getContext(), "手機不支援行事曆功能!!", 0).show();
                fireErrorEvent("Add Calendar Content Error: " + e4.getMessage(), MraidParser.MRAID_COMMAND_CREATE_CALENDAR_EVENT);
            } catch (ParseException e5) {
                String str6 = TAG;
                C10831c.m10520b(str6, "MraidProcessor.createCalendarEvent Parse Date String Error: " + e5.getMessage());
                fireErrorEvent("Parse Date String Error: " + e5.getMessage(), MraidParser.MRAID_COMMAND_CREATE_CALENDAR_EVENT);
            } catch (JSONException e6) {
                String str7 = TAG;
                C10831c.m10520b(str7, "MraidProcessor.createCalendarEvent JSON Error: " + e6.getMessage());
                fireErrorEvent(e6.getMessage(), MraidParser.MRAID_COMMAND_CREATE_CALENDAR_EVENT);
            }
        }
    }

    public void expand() {
        String str = TAG;
        C10831c.m10518c(str, "MraidProcessor.expand() invoke !! Current State = " + this.f10109b.getString());
        MraidStates mraidStates = this.f10109b;
        if ((mraidStates == MraidStates.DEFAULT || mraidStates == MraidStates.RESIZED) && this.f10110c == MraidPlacementType.INLINE) {
            if (this.f10114g == null) {
                this.f10114g = new MraidLayoutExpandHandler(this.f10108a.get());
            }
            this.f10114g.expand();
            fireStateChangeEvent(MraidStates.EXPANDED);
            m29349a(this.f10112e, this.f10114g);
            return;
        }
        C10831c.m10520b(TAG, "expand() Error: The State or PlacementType is not match this function.");
        fireErrorEvent("The State or PlacementType is not match this function.", MraidParser.MRAID_COMMAND_EXPAND);
    }

    public void expand(Map<String, String> map) {
        String str = TAG;
        C10831c.m10518c(str, "MraidProcessor.expand(url) invoke !! Current State = " + this.f10109b.getString());
        MraidStates mraidStates = this.f10109b;
        if ((mraidStates == MraidStates.DEFAULT || mraidStates == MraidStates.RESIZED) && this.f10110c == MraidPlacementType.INLINE) {
            String str2 = map.get("url");
            String str3 = str2;
            String str4 = str2;
            try {
                String decode = URLDecoder.decode(str2, "UTF-8");
                if (this.f10114g == null) {
                    this.f10114g = new MraidLayoutExpandHandler(this.f10108a.get());
                }
                this.f10114g.expand(decode);
                if (this.f10109b == MraidStates.RESIZED && this.f10115h != null) {
                    this.f10115h.restore(this.f10119l);
                }
                fireStateChangeEvent(MraidStates.EXPANDED);
                str3 = decode;
                str4 = decode;
                m29349a(this.f10112e, this.f10114g);
            } catch (UnsupportedEncodingException e) {
                String str5 = TAG;
                C10831c.m10520b(str5, "expand(" + str4 + ") UnsupportedEncodingException Error: " + e.getMessage());
                StringBuilder sb = new StringBuilder();
                sb.append("UnsupportedEncodingException Error: ");
                sb.append(e.getMessage());
                fireErrorEvent(sb.toString(), MraidParser.MRAID_COMMAND_EXPAND);
            } catch (Exception e2) {
                String str6 = TAG;
                C10831c.m10520b(str6, "expand(" + str3 + ") Exception Error: " + e2.getMessage());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Exception Error: ");
                sb2.append(e2.getMessage());
                fireErrorEvent(sb2.toString(), MraidParser.MRAID_COMMAND_EXPAND);
            }
        } else {
            C10831c.m10520b(TAG, "expand(url) Error: The State or PlacementType is not match this function.");
            fireErrorEvent("The State or PlacementType is not match this function.", MraidParser.MRAID_COMMAND_EXPAND);
        }
    }

    public void fireErrorEvent(String str, String str2) {
        WeakReference<JSWebView> weakReference;
        String str3 = TAG;
        C10831c.m10518c(str3, "fireErrorEvent(" + str + UserProfile.CARD_CATE_SEPARATOR + str2 + ") invoke!! ");
        if (str != null && (weakReference = this.f10108a) != null && weakReference.get() != null) {
            JSWebView jSWebView = this.f10108a.get();
            jSWebView.injectJavaScript("mraid.fireErrorEvent('" + str + "', '" + str2 + "');");
        }
    }

    public void fireReadyEvent() {
        C10831c.m10518c(TAG, "fireReadyEvent");
        WeakReference<JSWebView> weakReference = this.f10108a;
        if (weakReference != null && weakReference.get() != null) {
            this.f10108a.get().injectJavaScript("mraid.fireReadyEvent();");
        }
    }

    @SuppressLint({"DefaultLocale"})
    public void fireStateChangeEvent(MraidStates mraidStates) {
        WeakReference<JSWebView> weakReference;
        C10831c.m10518c(TAG, "fireStateChangeEvent");
        if (mraidStates != this.f10109b && (weakReference = this.f10108a) != null && weakReference.get() != null) {
            this.f10109b = mraidStates;
            JSWebView jSWebView = this.f10108a.get();
            jSWebView.injectJavaScript("mraid.fireStateChangeEvent('" + mraidStates.getString() + "');");
        }
    }

    public void fireViewableChangeEvent(boolean z) {
        WeakReference<JSWebView> weakReference;
        String str = TAG;
        C10831c.m10518c(str, "fireViewableChangeEvent(" + z + "), the orignal flag is " + this.f10111d);
        if (z != this.f10111d && (weakReference = this.f10108a) != null && weakReference.get() != null) {
            this.f10111d = z;
            JSWebView jSWebView = this.f10108a.get();
            jSWebView.injectJavaScript("mraid.fireViewableChangeEvent(" + this.f10111d + ");");
        }
    }

    public void initMRAID(MraidPlacementType mraidPlacementType) {
        WeakReference<JSWebView> weakReference = this.f10108a;
        if (weakReference != null && weakReference.get() != null) {
            m29354a();
            if (this.f10109b == MraidStates.LOADING) {
                setPlacementType(mraidPlacementType);
                setSupportedServices();
                m29343d();
                m29348b();
                this.f10108a.get().addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.taiwanmobile.pt.adp.view.webview.mraid.MraidProcessor.1
                    @Override // android.view.View.OnLayoutChangeListener
                    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                        MraidProcessor.this.m29343d();
                        MraidProcessor.this.m29348b();
                    }
                });
                this.f10114g = m29346b(this.f10112e);
                MraidLayoutExpandHandler mraidLayoutExpandHandler = this.f10114g;
                if (mraidLayoutExpandHandler == null || !mraidLayoutExpandHandler.isTwoPart()) {
                    fireStateChangeEvent(MraidStates.DEFAULT);
                } else {
                    fireStateChangeEvent(MraidStates.EXPANDED);
                }
                if (this.f10110c == MraidPlacementType.INLINE) {
                    m29342e();
                }
                fireReadyEvent();
            }
        }
    }

    public void open(Map<String, String> map) {
        C10831c.m10518c(TAG, "MraidProcessor.open invoke !!");
        String str = map.get("url");
        String str2 = str;
        String str3 = str;
        try {
            String decode = URLDecoder.decode(str, "UTF-8");
            StringBuilder sb = new StringBuilder();
            sb.append("android.openUrl(\"");
            sb.append(decode);
            sb.append("\")");
            String sb2 = sb.toString();
            if (this.f10108a != null && this.f10108a.get() != null) {
                str2 = decode;
                str3 = decode;
                this.f10108a.get().injectJavaScript(sb2);
            }
        } catch (UnsupportedEncodingException e) {
            String str4 = TAG;
            C10831c.m10520b(str4, "open(" + str3 + ") error: " + e.getMessage());
            fireErrorEvent(e.getMessage(), MraidParser.MRAID_COMMAND_OPEN);
        } catch (Exception e2) {
            String str5 = TAG;
            C10831c.m10520b(str5, "open(" + str2 + ") error: " + e2.getMessage());
            fireErrorEvent(e2.getMessage(), MraidParser.MRAID_COMMAND_OPEN);
        }
    }

    public void playVideo(Map<String, String> map) {
        String str = map.get("url");
        try {
            String decode = URLDecoder.decode(str, "UTF-8");
            if (this.f10108a != null && this.f10108a.get() != null) {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setDataAndType(Uri.parse(decode), "video/*");
                Context context = this.f10108a.get().getContext();
                if (context != null) {
                    context.startActivity(intent);
                }
            }
        } catch (ActivityNotFoundException e) {
            String str2 = TAG;
            C10831c.m10520b(str2, "playVideo(" + str + ") error: " + e.getMessage());
            StringBuilder sb = new StringBuilder();
            sb.append(" ActivityNotFoundException Error: ");
            sb.append(e.getMessage());
            fireErrorEvent(sb.toString(), MraidParser.MRAID_COMMAND_PLAY_VIDEO);
        } catch (UnsupportedEncodingException e2) {
            String str3 = TAG;
            C10831c.m10520b(str3, "playVideo(" + str + ") error: " + e2.getMessage());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" UnsupportedEncodingException Error: ");
            sb2.append(e2.getMessage());
            fireErrorEvent(sb2.toString(), MraidParser.MRAID_COMMAND_PLAY_VIDEO);
        } catch (Exception e3) {
            String str4 = TAG;
            C10831c.m10520b(str4, "playVideo(" + str + ") error: " + e3.getMessage());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(" Exception Error: ");
            sb3.append(e3.getMessage());
            fireErrorEvent(sb3.toString(), MraidParser.MRAID_COMMAND_PLAY_VIDEO);
        }
    }

    public void reportVpaidEvent(Map<String, String> map) {
        String str = map.get(MraidParser.MRAID_PARAM_VPAID_EVENT);
        if (str != null) {
            String str2 = TAG;
            C10831c.m10520b(str2, "The Event is: " + str);
        }
    }

    public void resize() {
        MraidStates mraidStates = this.f10109b;
        if ((mraidStates == MraidStates.DEFAULT || mraidStates == MraidStates.RESIZED) && this.f10110c == MraidPlacementType.INLINE) {
            fireStateChangeEvent(MraidStates.RESIZED);
            MraidLayoutResizeHandler mraidLayoutResizeHandler = this.f10115h;
            if (mraidLayoutResizeHandler != null) {
                mraidLayoutResizeHandler.resize(this.f10118k);
                return;
            }
            return;
        }
        C10831c.m10520b(TAG, "resize() Error: The State or PlacementType is not match this function.");
        fireErrorEvent("The State or PlacementType is not match this function.", MraidParser.MRAID_COMMAND_RESIZE);
    }

    public void setCurrentPosition() {
        C10831c.m10518c(TAG, "setCurrentPosition invoke !!");
        Activity a = C10832d.m10506a(this.f10108a.get());
        WeakReference<JSWebView> weakReference = this.f10108a;
        if (weakReference != null && weakReference.get() != null && a != null) {
            a.getWindowManager().getDefaultDisplay().getMetrics(this.f10116i);
            Rect rect = this.f10117j;
            int i = rect.left;
            int i2 = this.f10116i.densityDpi;
            int i3 = (i * 160) / i2;
            int i4 = (rect.top * 160) / i2;
            int width = (rect.width() * 160) / this.f10116i.densityDpi;
            int height = (this.f10117j.height() * 160) / this.f10116i.densityDpi;
            String str = TAG;
            C10831c.m10518c(str, "setCurrentPosition [" + i3 + "," + i4 + "] (" + width + "x" + height + ")");
            JSWebView jSWebView = this.f10108a.get();
            jSWebView.injectJavaScript("mraid.setCurrentPosition(" + i3 + "," + i4 + "," + width + "," + height + ");");
        }
    }

    public void setDefaultPosition() {
        C10831c.m10518c(TAG, "setDefaultPosition invoke !!");
        Activity a = C10832d.m10506a(this.f10108a.get());
        WeakReference<JSWebView> weakReference = this.f10108a;
        if (weakReference != null && weakReference.get() != null && a != null) {
            a.getWindowManager().getDefaultDisplay().getMetrics(this.f10116i);
            Rect rect = this.f10118k;
            int i = rect.left;
            int i2 = this.f10116i.densityDpi;
            int i3 = (i * 160) / i2;
            int i4 = (rect.top * 160) / i2;
            int width = (rect.width() * 160) / this.f10116i.densityDpi;
            int height = (this.f10118k.height() * 160) / this.f10116i.densityDpi;
            String str = TAG;
            C10831c.m10518c(str, "setDefaultPosition [" + i3 + "," + i4 + "] (" + width + "x" + height + ")");
            JSWebView jSWebView = this.f10108a.get();
            jSWebView.injectJavaScript("mraid.setDefaultPosition(" + i3 + "," + i4 + "," + width + "," + height + ");");
        }
    }

    public void setMaxSize() {
        C10831c.m10518c(TAG, "setMaxSize invoke !!");
        Activity a = C10832d.m10506a(this.f10108a.get());
        WeakReference<JSWebView> weakReference = this.f10108a;
        if (weakReference != null && weakReference.get() != null && a != null) {
            a.getWindowManager().getDefaultDisplay().getMetrics(this.f10116i);
            C4206b bVar = this.f10120m;
            int i = bVar.f10135a;
            int i2 = this.f10116i.densityDpi;
            int i3 = (i * 160) / i2;
            int i4 = (bVar.f10136b * 160) / i2;
            String str = TAG;
            C10831c.m10518c(str, "setMaxSize (" + i3 + "x" + i4 + ")");
            JSWebView jSWebView = this.f10108a.get();
            jSWebView.injectJavaScript("mraid.setMaxSize(" + i3 + "," + i4 + ");");
        }
    }

    public void setOrientationProperties(Map<String, String> map) {
        WeakReference<JSWebView> weakReference;
        if (map != null && map.containsKey(MraidParser.MRAID_PARAM_ALLOW_ORIENTATION_CHANGE) && map.containsKey(MraidParser.MRAID_PARAM_FORCE_ORIENTATION)) {
            boolean parseBoolean = Boolean.parseBoolean(map.get(MraidParser.MRAID_PARAM_ALLOW_ORIENTATION_CHANGE));
            String str = map.get(MraidParser.MRAID_PARAM_FORCE_ORIENTATION);
            C10831c.m10518c(TAG, "MraidProcessor.setOrientationProperties invoke !!\nallowOrientationChange = " + parseBoolean + "\nforceOrientation = " + str);
            this.f10113f.setAllowOrientationChange(parseBoolean);
            this.f10113f.setOrientation(str);
            if ((this.f10110c == MraidPlacementType.INTERSTITIAL || this.f10109b == MraidStates.EXPANDED) && (weakReference = this.f10108a) != null && weakReference.get() != null) {
                if (this.f10113f.isAllowOrientationChange()) {
                    this.f10108a.get().injectJavaScript("android.setRequestedOrientation(-1)");
                    return;
                }
                int i = C42044.f10127a[this.f10113f.getOrientation().ordinal()];
                int i2 = -1;
                if (i != 1) {
                    i2 = i != 2 ? i != 3 ? -1 : 0 : 1;
                }
                this.f10108a.get().injectJavaScript("android.setRequestedOrientation(" + i2 + ")");
                MraidLayoutExpandHandler mraidLayoutExpandHandler = this.f10114g;
                if (mraidLayoutExpandHandler != null && !mraidLayoutExpandHandler.isTwoPart()) {
                    this.f10114g.requestFocus();
                }
            }
        }
    }

    public void setPlacementType(MraidPlacementType mraidPlacementType) {
        this.f10110c = mraidPlacementType;
        WeakReference<JSWebView> weakReference = this.f10108a;
        if (weakReference != null && weakReference.get() != null) {
            JSWebView jSWebView = this.f10108a.get();
            jSWebView.injectJavaScript("mraid.setPlacementType('" + mraidPlacementType.getString() + "');");
        }
    }

    public void setResizeProperties(Map<String, String> map) {
        if (map != null && map.containsKey("width") && map.containsKey("height") && map.containsKey(MraidParser.MRAID_PARAM_OFFSET_X) && map.containsKey(MraidParser.MRAID_PARAM_OFFSET_Y) && map.containsKey(MraidParser.MRAID_PARAM_CUSTOM_CLOSE_POSITION) && map.containsKey(MraidParser.MRAID_PARAM_ALLOW_OFF_SCREEN)) {
            int parseInt = Integer.parseInt(map.get("width"));
            int parseInt2 = Integer.parseInt(map.get("height"));
            int parseInt3 = Integer.parseInt(map.get(MraidParser.MRAID_PARAM_OFFSET_X));
            int parseInt4 = Integer.parseInt(map.get(MraidParser.MRAID_PARAM_OFFSET_Y));
            String str = map.get(MraidParser.MRAID_PARAM_CUSTOM_CLOSE_POSITION);
            boolean parseBoolean = Boolean.parseBoolean(map.get(MraidParser.MRAID_PARAM_ALLOW_OFF_SCREEN));
            if (this.f10115h == null) {
                this.f10115h = new MraidLayoutResizeHandler(this.f10108a.get());
            }
            this.f10115h.setResizeProperties(new MraidResizeProperties(parseInt, parseInt2, parseInt3, parseInt4, MraidResizeProperties.customClosePositionFromString(str), parseBoolean));
        }
    }

    public void setScreenSize() {
        C10831c.m10518c(TAG, "setScreenSize invoke !!");
        Activity a = C10832d.m10506a(this.f10108a.get());
        WeakReference<JSWebView> weakReference = this.f10108a;
        if (weakReference != null && weakReference.get() != null && a != null) {
            a.getWindowManager().getDefaultDisplay().getMetrics(this.f10116i);
            C4206b bVar = this.f10121n;
            int i = bVar.f10135a;
            int i2 = this.f10116i.densityDpi;
            int i3 = (i * 160) / i2;
            int i4 = (bVar.f10136b * 160) / i2;
            String str = TAG;
            C10831c.m10518c(str, "setScreenSize (" + i3 + "x" + i4 + ")");
            JSWebView jSWebView = this.f10108a.get();
            jSWebView.injectJavaScript("mraid.setScreenSize(" + i3 + "," + i4 + ");");
        }
    }

    public void setSupportedServices() {
        C10831c.m10518c(TAG, "setSupportedServices invoke !!");
        WeakReference<JSWebView> weakReference = this.f10108a;
        if (weakReference != null && weakReference.get() != null) {
            this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, true );");
            this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, true );");
            this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.VPAID, true );");
            this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, true );");
            if (C10832d.m10501b(this.f10108a.get().getContext())) {
                this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, true );");
            }
            if (C10832d.m10490d(this.f10108a.get().getContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
                this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, true );");
            }
            this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.TAMEDIA_BASE, true );");
            this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.TAMEDIA_VIDEO, true );");
            this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.TAMEDIA_CALENDAR, true );");
            this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.TAMEDIA_PROXIMITY, true );");
            this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.TAMEDIA_FLOAT, true );");
            this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.TAMEDIA_INREAD, true );");
            if (C10832d.m10490d(this.f10108a.get().getContext(), "android.permission.VIBRATE")) {
                this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.TAMEDIA_VIBRATE, true );");
            }
            if (C10832d.m10490d(this.f10108a.get().getContext(), "android.permission.CAMERA")) {
                this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.TAMEDIA_CAMERA, true );");
                this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.TAMEDIA_FLASH, true );");
            }
            if (C10832d.m10490d(this.f10108a.get().getContext(), "android.permission.RECORD_AUDIO")) {
                this.f10108a.get().injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.TAMEDIA_MIC, true );");
            }
        }
    }

    public void storePicture(Map<String, String> map) {
        String str = map.get("url");
        try {
            final String decode = URLDecoder.decode(str, "UTF-8");
            WeakReference<JSWebView> weakReference = this.f10108a;
            if (!(weakReference == null || weakReference.get() == null)) {
                final Context context = weakReference.get().getContext();
                if (context != null) {
                    new AlertDialog.Builder(context).setMessage("確定要下載此圖片?").setPositiveButton("Yes", new DialogInterface.OnClickListener() { // from class: com.taiwanmobile.pt.adp.view.webview.mraid.MraidProcessor.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            new AsyncTaskC4205a(context).execute(decode);
                        }
                    }).setNegativeButton("No", (DialogInterface.OnClickListener) null).show();
                } else {
                    C10831c.m10520b(TAG, "storePicture error: Context is null.");
                    fireErrorEvent(" storePicture error: Context is null.", MraidParser.MRAID_COMMAND_STORE_PICTURE);
                }
            }
        } catch (UnsupportedEncodingException e) {
            String str2 = TAG;
            C10831c.m10520b(str2, "storePicture(" + str + ") error: " + e.getMessage());
            StringBuilder sb = new StringBuilder();
            sb.append(" UnsupportedEncodingException Error: ");
            sb.append(e.getMessage());
            fireErrorEvent(sb.toString(), MraidParser.MRAID_COMMAND_STORE_PICTURE);
        } catch (Exception e2) {
            String str3 = TAG;
            C10831c.m10520b(str3, "storePicture(" + str + ") error: " + e2.getMessage());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" Exception Error: ");
            sb2.append(e2.getMessage());
            fireErrorEvent(sb2.toString(), MraidParser.MRAID_COMMAND_STORE_PICTURE);
        }
    }

    public void useCustomClose(Map<String, String> map) {
        boolean parseBoolean = Boolean.parseBoolean(map.get("useCustomClose"));
        WeakReference<JSWebView> weakReference = this.f10108a;
        if (weakReference != null && weakReference.get() != null && parseBoolean) {
            MraidLayoutExpandHandler mraidLayoutExpandHandler = this.f10114g;
            if (mraidLayoutExpandHandler != null) {
                mraidLayoutExpandHandler.disableCloseButton();
            }
            this.f10108a.get().injectJavaScript("android.disableCloseButton()");
        }
    }
}
