package com.allinone.callerid.util.recorder;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.recorder.RecordCall;
import com.allinone.callerid.customview.BaseEditText;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.permission.AccessibilityTipsActivity;
import com.allinone.callerid.p157f.p159k.C2643a;
import com.allinone.callerid.p157f.p159k.C2645b;
import com.allinone.callerid.p162i.p163a.AbstractC2778c;
import com.allinone.callerid.p162i.p163a.AbstractC2782d;
import com.allinone.callerid.p162i.p163a.p192v.C2982a;
import com.allinone.callerid.service.C3613b;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* renamed from: com.allinone.callerid.util.recorder.f */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f.class */
public class C3826f {

    /* renamed from: a */
    private static AlertDialog f12107a;

    /* renamed from: b */
    private static AlertDialog f12108b;

    /* renamed from: c */
    private static AlertDialog f12109c;

    /* renamed from: d */
    private static AlertDialog f12110d;

    /* renamed from: e */
    private static AlertDialog f12111e;

    /* renamed from: f */
    private static AlertDialog f12112f;

    /* renamed from: g */
    private static AlertDialog f12113g;

    /* renamed from: h */
    private static boolean f12114h = false;

    /* renamed from: i */
    private static MediaPlayer f12115i;

    /* renamed from: j */
    private static Handler f12116j;

    /* renamed from: k */
    private static Runnable f12117k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$a.class */
    public class C3827a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        final /* synthetic */ CheckBox f12118a;

        /* renamed from: b */
        final /* synthetic */ FrameLayout f12119b;

        /* renamed from: c */
        final /* synthetic */ FrameLayout f12120c;

        C3827a(CheckBox checkBox, FrameLayout frameLayout, FrameLayout frameLayout2) {
            this.f12118a = checkBox;
            this.f12119b = frameLayout;
            this.f12120c = frameLayout2;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                this.f12119b.setVisibility(0);
                this.f12120c.setVisibility(8);
            } else if (this.f12118a.isChecked()) {
                this.f12119b.setVisibility(8);
                this.f12120c.setVisibility(0);
            } else {
                this.f12119b.setVisibility(0);
                this.f12120c.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$b.class */
    public class C3828b implements CompoundButton.OnCheckedChangeListener {
        C3828b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                C3820b.m24015u(false);
                return;
            }
            C3820b.m24015u(true);
            C3810q.m24071b().m24070c("record_tip_enable_auto");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$c.class */
    public class View$OnClickListenerC3829c implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ Activity f12121d;

        /* renamed from: com.allinone.callerid.util.recorder.f$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$c$a.class */
        class C3830a implements C3776a.AbstractC3783g {
            C3830a() {
                View$OnClickListenerC3829c.this = r4;
            }

            @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
            /* renamed from: a */
            public void mo23968a() {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "开启了权限");
                }
                C3826f.m23978q();
            }
        }

        View$OnClickListenerC3829c(Activity activity) {
            this.f12121d = activity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R$id.dialog_record_guide_close /* 2131296569 */:
                    if (C3826f.f12109c == null) {
                        return;
                    }
                    C3826f.f12109c.dismiss();
                    return;
                case R$id.dialog_record_guide_fl /* 2131296570 */:
                    C3776a.m24151n(this.f12121d, new C3830a());
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$d.class */
    public class DialogInterface$OnDismissListenerC3831d implements DialogInterface.OnDismissListener {

        /* renamed from: d */
        final /* synthetic */ AbstractC2782d f12123d;

        DialogInterface$OnDismissListenerC3831d(AbstractC2782d abstractC2782d) {
            this.f12123d = abstractC2782d;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            AbstractC2782d abstractC2782d = this.f12123d;
            if (abstractC2782d != null) {
                abstractC2782d.mo24692a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$e.class */
    public class View$OnClickListenerC3832e implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ AbstractC2778c f12124d;

        View$OnClickListenerC3832e(AbstractC2778c abstractC2778c) {
            this.f12124d = abstractC2778c;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131297878) {
                C3810q.m24071b().m24070c("enable_dialog_click");
                AbstractC2778c abstractC2778c = this.f12124d;
                if (abstractC2778c != null) {
                    abstractC2778c.mo25101a();
                }
                if (C3826f.f12110d == null) {
                    return;
                }
                C3826f.f12110d.dismiss();
            } else if (id != 2131298025) {
            } else {
                AbstractC2778c abstractC2778c2 = this.f12124d;
                if (abstractC2778c2 != null) {
                    abstractC2778c2.mo25100b();
                }
                if (C3826f.f12110d == null) {
                    return;
                }
                C3826f.f12110d.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$f.class */
    public class View$OnClickListenerC3833f implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ AbstractC2778c f12125d;

        View$OnClickListenerC3833f(AbstractC2778c abstractC2778c) {
            this.f12125d = abstractC2778c;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131297878) {
                C3810q.m24071b().m24070c("accept_dialog_click");
                AbstractC2778c abstractC2778c = this.f12125d;
                if (abstractC2778c != null) {
                    abstractC2778c.mo25101a();
                }
                if (C3826f.f12111e == null) {
                    return;
                }
                C3826f.f12111e.dismiss();
            } else if (id != 2131298025) {
            } else {
                AbstractC2778c abstractC2778c2 = this.f12125d;
                if (abstractC2778c2 != null) {
                    abstractC2778c2.mo25100b();
                }
                if (C3826f.f12111e == null) {
                    return;
                }
                C3826f.f12111e.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$g.class */
    public class View$OnClickListenerC3834g implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ AbstractC2778c f12126d;

        View$OnClickListenerC3834g(AbstractC2778c abstractC2778c) {
            this.f12126d = abstractC2778c;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131297878) {
                C3810q.m24071b().m24070c("permissions_dialog_click");
                AbstractC2778c abstractC2778c = this.f12126d;
                if (abstractC2778c != null) {
                    abstractC2778c.mo25101a();
                }
                if (C3826f.f12112f == null) {
                    return;
                }
                C3826f.f12112f.dismiss();
            } else if (id != 2131298025) {
            } else {
                AbstractC2778c abstractC2778c2 = this.f12126d;
                if (abstractC2778c2 != null) {
                    abstractC2778c2.mo25100b();
                }
                if (C3826f.f12112f == null) {
                    return;
                }
                C3826f.f12112f.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$h.class */
    public class View$OnClickListenerC3835h implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ AbstractC2778c f12127d;

        View$OnClickListenerC3835h(AbstractC2778c abstractC2778c) {
            this.f12127d = abstractC2778c;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131297878) {
                C3810q.m24071b().m24070c("accessibility_permissions_dialog_click");
                AbstractC2778c abstractC2778c = this.f12127d;
                if (abstractC2778c != null) {
                    abstractC2778c.mo25101a();
                }
                if (C3826f.f12113g == null) {
                    return;
                }
                C3826f.f12113g.dismiss();
            } else if (id != 2131298025) {
            } else {
                AbstractC2778c abstractC2778c2 = this.f12127d;
                if (abstractC2778c2 != null) {
                    abstractC2778c2.mo25100b();
                }
                if (C3826f.f12113g == null) {
                    return;
                }
                C3826f.f12113g.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$i.class */
    public class RunnableC3836i implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f12128d;

        RunnableC3836i(Context context) {
            this.f12128d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f12128d, AccessibilityTipsActivity.class);
            intent.addFlags(268435456);
            this.f12128d.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$j.class */
    public class View$OnClickListenerC3837j implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ ImageView f12129d;

        View$OnClickListenerC3837j(ImageView imageView) {
            this.f12129d = imageView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131296357) {
                if (C3826f.f12107a == null) {
                    return;
                }
                C3826f.f12107a.dismiss();
            } else if (id != 2131296359) {
            } else {
                try {
                    if (C3826f.f12114h) {
                        if (C3826f.f12115i != null) {
                            C3826f.f12115i.pause();
                        }
                        this.f12129d.setImageResource(R$drawable.audio_pause);
                        boolean unused = C3826f.f12114h = false;
                        return;
                    }
                    if (C3826f.f12115i != null) {
                        C3826f.f12115i.start();
                    }
                    this.f12129d.setImageResource(R$drawable.audio_play);
                    boolean unused2 = C3826f.f12114h = true;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$k.class */
    public class C3838k implements SeekBar.OnSeekBarChangeListener {

        /* renamed from: d */
        final /* synthetic */ TextView f12130d;

        /* renamed from: e */
        final /* synthetic */ SimpleDateFormat f12131e;

        C3838k(TextView textView, SimpleDateFormat simpleDateFormat) {
            this.f12130d = textView;
            this.f12131e = simpleDateFormat;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                this.f12130d.setText(this.f12131e.format(Integer.valueOf(i)));
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            try {
                if (C3826f.f12115i == null) {
                    return;
                }
                C3826f.f12115i.seekTo(seekBar.getProgress());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$l.class */
    public class C3839l implements MediaPlayer.OnCompletionListener {
        C3839l() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            try {
                if (C3826f.f12107a == null) {
                    return;
                }
                C3826f.f12107a.dismiss();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$m.class */
    public class C3840m implements MediaPlayer.OnErrorListener {

        /* renamed from: d */
        final /* synthetic */ Activity f12132d;

        /* renamed from: e */
        final /* synthetic */ String f12133e;

        C3840m(Activity activity, String str) {
            this.f12132d = activity;
            this.f12133e = str;
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                Uri m33359e = FileProvider.m33359e(this.f12132d, "com.allinone.callerid", new File(this.f12133e));
                intent.addFlags(1);
                intent.setDataAndType(m33359e, "audio/mp3");
                this.f12132d.startActivity(intent);
                if (C3826f.f12107a == null) {
                    return false;
                }
                C3826f.f12107a.dismiss();
                return false;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$n.class */
    public class C3841n implements MediaPlayer.OnPreparedListener {

        /* renamed from: d */
        final /* synthetic */ TextView f12134d;

        /* renamed from: e */
        final /* synthetic */ TextView f12135e;

        /* renamed from: f */
        final /* synthetic */ SeekBar f12136f;

        /* renamed from: g */
        final /* synthetic */ ImageView f12137g;

        /* renamed from: com.allinone.callerid.util.recorder.f$n$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$n$a.class */
        class RunnableC3842a implements Runnable {
            RunnableC3842a() {
                C3841n.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("mm:ss", Locale.getDefault());
                    if (C3826f.f12115i.isPlaying()) {
                        C3841n.this.f12136f.setProgress(C3826f.f12115i.getCurrentPosition());
                        C3841n.this.f12135e.setText(simpleDateFormat.format(Integer.valueOf(C3826f.f12115i.getCurrentPosition())));
                    }
                    C3826f.f12116j.postDelayed(this, 1000L);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3841n(TextView textView, TextView textView2, SeekBar seekBar, ImageView imageView) {
            this.f12134d = textView;
            this.f12135e = textView2;
            this.f12136f = seekBar;
            this.f12137g = imageView;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            this.f12134d.setText(new SimpleDateFormat("mm:ss", Locale.getDefault()).format(new Date(mediaPlayer.getDuration() + 0)));
            this.f12135e.setText("00:00");
            this.f12136f.setMax(C3826f.f12115i.getDuration());
            C3826f.f12115i.start();
            boolean unused = C3826f.f12114h = true;
            this.f12137g.setImageResource(R$drawable.audio_play);
            Handler unused2 = C3826f.f12116j = new Handler();
            Runnable unused3 = C3826f.f12117k = new RunnableC3842a();
            C3826f.f12116j.post(C3826f.f12117k);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$o.class */
    public class DialogInterface$OnDismissListenerC3843o implements DialogInterface.OnDismissListener {
        DialogInterface$OnDismissListenerC3843o() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (C3826f.f12115i != null) {
                C3826f.f12115i.release();
                MediaPlayer unused = C3826f.f12115i = null;
            }
            if (C3826f.f12116j == null || C3826f.f12117k == null) {
                return;
            }
            C3826f.f12116j.removeCallbacks(C3826f.f12117k);
            Handler unused2 = C3826f.f12116j = null;
            Runnable unused3 = C3826f.f12117k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$p.class */
    public class C3844p implements TextWatcher {

        /* renamed from: d */
        final /* synthetic */ TextView f12139d;

        /* renamed from: e */
        final /* synthetic */ BaseEditText f12140e;

        /* renamed from: f */
        final /* synthetic */ Activity f12141f;

        C3844p(TextView textView, BaseEditText baseEditText, Activity activity) {
            this.f12139d = textView;
            this.f12140e = baseEditText;
            this.f12141f = activity;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            TextView textView = this.f12139d;
            textView.setText(this.f12140e.length() + "/200");
            if (this.f12140e.length() > 200) {
                this.f12139d.setTextColor(this.f12141f.getResources().getColor(R$color.red));
            } else {
                this.f12139d.setTextColor(this.f12141f.getResources().getColor(R$color.no_text));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$q.class */
    public class View$OnClickListenerC3845q implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ BaseEditText f12142d;

        /* renamed from: e */
        final /* synthetic */ RecordCall f12143e;

        /* renamed from: f */
        final /* synthetic */ RecyclerView.Adapter f12144f;

        /* renamed from: g */
        final /* synthetic */ Activity f12145g;

        /* renamed from: com.allinone.callerid.util.recorder.f$q$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$q$a.class */
        class RunnableC3846a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ String f12146d;

            RunnableC3846a(String str) {
                View$OnClickListenerC3845q.this = r4;
                this.f12146d = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2645b.m26967d().m26960k(View$OnClickListenerC3845q.this.f12143e.getFilepath(), this.f12146d);
            }
        }

        View$OnClickListenerC3845q(BaseEditText baseEditText, RecordCall recordCall, RecyclerView.Adapter adapter, Activity activity) {
            this.f12142d = baseEditText;
            this.f12143e = recordCall;
            this.f12144f = adapter;
            this.f12145g = activity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131296573) {
                if (C3826f.f12108b == null) {
                    return;
                }
                C3826f.f12108b.dismiss();
            } else if (id != 2131296576) {
            } else {
                String obj = this.f12142d.getText().toString();
                if ("".equals(obj) || this.f12142d.length() > 200) {
                    Toast.makeText(this.f12145g, (int) R$string.Take_notes_of_this_record, 1).show();
                    return;
                }
                this.f12143e.setRemark(obj);
                this.f12144f.m31967i();
                new Thread(new RunnableC3846a(obj)).start();
                C3810q.m24071b().m24070c("recorder_remark_add_count");
                if (C3826f.f12108b == null) {
                    return;
                }
                C3826f.f12108b.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.f$r */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/f$r.class */
    public class C3847r implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        final /* synthetic */ CheckBox f12148a;

        /* renamed from: b */
        final /* synthetic */ FrameLayout f12149b;

        /* renamed from: c */
        final /* synthetic */ FrameLayout f12150c;

        C3847r(CheckBox checkBox, FrameLayout frameLayout, FrameLayout frameLayout2) {
            this.f12148a = checkBox;
            this.f12149b = frameLayout;
            this.f12150c = frameLayout2;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                this.f12149b.setVisibility(0);
                this.f12150c.setVisibility(8);
            } else if (this.f12148a.isChecked()) {
                this.f12149b.setVisibility(8);
                this.f12150c.setVisibility(0);
            } else {
                this.f12149b.setVisibility(0);
                this.f12150c.setVisibility(8);
            }
        }
    }

    /* renamed from: A */
    public static void m23996A(Context context) {
        try {
            new Handler().postDelayed(new RunnableC3836i(context), 500L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: B */
    public static void m23995B(String str, int i, int i2) {
        if (!C3820b.m24031e() || !C2982a.m26310a() || !m23977r(str, i)) {
            return;
        }
        RecordCall recordCall = new RecordCall();
        recordCall.setNumber(str);
        if (i2 == 1) {
            recordCall.setPhonestatus(110);
        } else {
            recordCall.setPhonestatus(111);
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wbb", "开始自动录音" + recordCall.getPhonestatus());
        }
        C3613b.m24800f().m24795k(recordCall);
        if (!C3711a1.m24505o2().booleanValue()) {
            return;
        }
        C3767h1.m24289E0(EZCallApplication.m26146c());
        C3810q.m24071b().m24070c("speaker_tip_show");
        C3711a1.m24640F2(Boolean.FALSE);
    }

    /* renamed from: q */
    public static void m23978q() {
        AlertDialog alertDialog = f12109c;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        C3820b.m24018r(true);
        C3820b.m24019q(true);
    }

    /* renamed from: r */
    public static boolean m23977r(String str, int i) {
        boolean z = i == 0;
        if (C3820b.m24028h() == 1) {
            return z ? C3820b.m24029g() || C2643a.m26973c().m26972d(str) : C3820b.m24027i() || C2643a.m26973c().m26972d(str);
        }
        return true;
    }

    /* renamed from: s */
    public static void m23976s(Activity activity, AbstractC2778c abstractC2778c) {
        if (!C3820b.m24026j()) {
            if (abstractC2778c == null) {
                return;
            }
            abstractC2778c.mo25101a();
            return;
        }
        View inflate = LayoutInflater.from(activity).inflate(R$layout.dialog_recorder_accept, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.dialog_record_guide_title);
        textView.getPaint().setFakeBoldText(true);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_contents_1);
        TextView textView3 = (TextView) inflate.findViewById(R$id.tv_contents_2);
        TextView textView4 = (TextView) inflate.findViewById(R$id.tv_not_now);
        TextView textView5 = (TextView) inflate.findViewById(R$id.tv_continue);
        textView4.getPaint().setFakeBoldText(true);
        textView5.getPaint().setFakeBoldText(true);
        Typeface m24359b = C3739f1.m24359b();
        textView.setTypeface(m24359b);
        textView2.setTypeface(m24359b);
        textView3.setTypeface(m24359b);
        textView4.setTypeface(m24359b);
        textView5.setTypeface(m24359b);
        View$OnClickListenerC3833f view$OnClickListenerC3833f = new View$OnClickListenerC3833f(abstractC2778c);
        textView4.setOnClickListener(view$OnClickListenerC3833f);
        textView5.setOnClickListener(view$OnClickListenerC3833f);
        AlertDialog create = new AlertDialog.Builder(activity).setView(inflate).create();
        f12111e = create;
        create.setCanceledOnTouchOutside(false);
        f12111e.show();
        C3820b.m24014v(false);
        C3810q.m24071b().m24070c("accept_dialog_show");
    }

    /* renamed from: t */
    public static void m23975t(Activity activity, AbstractC2778c abstractC2778c) {
        View inflate = LayoutInflater.from(activity).inflate(R$layout.dialog_recorder_accessibility, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.dialog_record_guide_title);
        textView.getPaint().setFakeBoldText(true);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_contents_1);
        TextView textView3 = (TextView) inflate.findViewById(R$id.tv_contents_2);
        TextView textView4 = (TextView) inflate.findViewById(R$id.tv_not_now);
        TextView textView5 = (TextView) inflate.findViewById(R$id.tv_continue);
        TextView textView6 = (TextView) inflate.findViewById(R$id.tv_contents_3);
        TextView textView7 = (TextView) inflate.findViewById(R$id.tv_contents_note);
        textView4.getPaint().setFakeBoldText(true);
        textView5.getPaint().setFakeBoldText(true);
        Typeface m24359b = C3739f1.m24359b();
        textView.setTypeface(m24359b);
        textView2.setTypeface(m24359b);
        textView3.setTypeface(m24359b);
        textView4.setTypeface(m24359b);
        textView5.setTypeface(m24359b);
        textView6.setTypeface(m24359b);
        textView7.setTypeface(m24359b);
        View$OnClickListenerC3835h view$OnClickListenerC3835h = new View$OnClickListenerC3835h(abstractC2778c);
        textView4.setOnClickListener(view$OnClickListenerC3835h);
        textView5.setOnClickListener(view$OnClickListenerC3835h);
        AlertDialog create = new AlertDialog.Builder(activity).setView(inflate).create();
        f12113g = create;
        create.setCanceledOnTouchOutside(false);
        f12113g.show();
        C3810q.m24071b().m24070c("accessibility_permissions_dialog_show");
    }

    /* renamed from: u */
    public static void m23974u(Activity activity, String str, String str2) {
        f12115i = new MediaPlayer();
        f12114h = false;
        View inflate = LayoutInflater.from(activity).inflate(R$layout.dialog_audio_player, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.audio_player_name);
        SeekBar seekBar = (SeekBar) inflate.findViewById(R$id.audio_player_sb);
        TextView textView2 = (TextView) inflate.findViewById(R$id.audio_player_runingtime);
        TextView textView3 = (TextView) inflate.findViewById(R$id.audio_player_alltime);
        ImageView imageView = (ImageView) inflate.findViewById(R$id.audio_player_play);
        ImageView imageView2 = (ImageView) inflate.findViewById(R$id.audio_player_close);
        Typeface m24359b = C3739f1.m24359b();
        textView.setTypeface(m24359b);
        textView2.setTypeface(m24359b);
        textView3.setTypeface(m24359b);
        textView.setText(str);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("mm:ss", Locale.getDefault());
        View$OnClickListenerC3837j view$OnClickListenerC3837j = new View$OnClickListenerC3837j(imageView);
        imageView2.setOnClickListener(view$OnClickListenerC3837j);
        imageView.setOnClickListener(view$OnClickListenerC3837j);
        if (str2 != null) {
            seekBar.setOnSeekBarChangeListener(new C3838k(textView2, simpleDateFormat));
            f12115i.setOnCompletionListener(new C3839l());
            f12115i.setOnErrorListener(new C3840m(activity, str2));
            try {
                f12115i.reset();
                f12115i.setDataSource(str2);
                f12115i.prepareAsync();
                f12115i.setOnPreparedListener(new C3841n(textView3, textView2, seekBar, imageView));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        try {
            AlertDialog create = new AlertDialog.Builder(activity).setView(inflate).create();
            f12107a = create;
            create.setOnDismissListener(new DialogInterface$OnDismissListenerC3843o());
            f12107a.show();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: v */
    public static AlertDialog m23973v(Activity activity, AbstractC2782d abstractC2782d) {
        if (C3820b.m24030f()) {
            C3820b.m24019q(true);
            return null;
        }
        C3822d.m24005c();
        C3810q.m24071b().m24070c("recorder_show_guide_tip_dialog_count");
        View inflate = LayoutInflater.from(activity).inflate(R$layout.dialog_recorder_guide, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.dialog_record_guide_title);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.dialog_record_guide_fl);
        TextView textView2 = (TextView) inflate.findViewById(R$id.dialog_record_guide_bt);
        TextView textView3 = (TextView) inflate.findViewById(R$id.desone);
        TextView textView4 = (TextView) inflate.findViewById(R$id.destwo);
        TextView textView5 = (TextView) inflate.findViewById(R$id.desthree);
        CheckBox checkBox = (CheckBox) inflate.findViewById(R$id.zuto_ck);
        ImageView imageView = (ImageView) inflate.findViewById(R$id.dialog_record_guide_close);
        CheckBox checkBox2 = (CheckBox) inflate.findViewById(R$id.checkbox_one);
        CheckBox checkBox3 = (CheckBox) inflate.findViewById(R$id.checkbox_two);
        FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(R$id.dialog_record_guide_flgray);
        TextView textView6 = (TextView) inflate.findViewById(R$id.dialog_record_guide_bt_gray);
        TextView textView7 = (TextView) inflate.findViewById(R$id.tv_speker_tip);
        checkBox2.setOnCheckedChangeListener(new C3847r(checkBox3, frameLayout2, frameLayout));
        checkBox3.setOnCheckedChangeListener(new C3827a(checkBox2, frameLayout2, frameLayout));
        checkBox.setOnCheckedChangeListener(new C3828b());
        Typeface m24359b = C3739f1.m24359b();
        textView.setTypeface(m24359b);
        textView2.setTypeface(m24359b);
        textView3.setTypeface(m24359b);
        textView4.setTypeface(m24359b);
        textView5.setTypeface(m24359b);
        textView7.setTypeface(m24359b);
        textView6.setTypeface(m24359b);
        textView4.setMovementMethod(LinkMovementMethod.getInstance());
        View$OnClickListenerC3829c view$OnClickListenerC3829c = new View$OnClickListenerC3829c(activity);
        frameLayout.setOnClickListener(view$OnClickListenerC3829c);
        imageView.setOnClickListener(view$OnClickListenerC3829c);
        AlertDialog create = new AlertDialog.Builder(activity).setView(inflate).create();
        f12109c = create;
        create.setOnDismissListener(new DialogInterface$OnDismissListenerC3831d(abstractC2782d));
        f12109c.show();
        return f12109c;
    }

    /* renamed from: w */
    public static void m23972w(Activity activity, AbstractC2778c abstractC2778c) {
        if (C3820b.m24030f()) {
            C3820b.m24019q(true);
            return;
        }
        C3822d.m24005c();
        if (!C3820b.m24025k()) {
            if (abstractC2778c == null) {
                return;
            }
            abstractC2778c.mo25101a();
            return;
        }
        C3810q.m24071b().m24070c("recorder_show_guide_tip_dialog_count_p");
        View inflate = LayoutInflater.from(activity).inflate(R$layout.dialog_recorder_guide_p, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.dialog_record_guide_title);
        textView.getPaint().setFakeBoldText(true);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_contents_1);
        TextView textView3 = (TextView) inflate.findViewById(R$id.tv_contents_2);
        TextView textView4 = (TextView) inflate.findViewById(R$id.tv_not_now);
        TextView textView5 = (TextView) inflate.findViewById(R$id.tv_continue);
        textView4.getPaint().setFakeBoldText(true);
        textView5.getPaint().setFakeBoldText(true);
        Typeface m24359b = C3739f1.m24359b();
        textView.setTypeface(m24359b);
        textView2.setTypeface(m24359b);
        textView3.setTypeface(m24359b);
        textView4.setTypeface(m24359b);
        textView5.setTypeface(m24359b);
        View$OnClickListenerC3832e view$OnClickListenerC3832e = new View$OnClickListenerC3832e(abstractC2778c);
        textView4.setOnClickListener(view$OnClickListenerC3832e);
        textView5.setOnClickListener(view$OnClickListenerC3832e);
        AlertDialog create = new AlertDialog.Builder(activity).setView(inflate).create();
        f12110d = create;
        create.setCanceledOnTouchOutside(false);
        f12110d.show();
        C3820b.m24013w(false);
        C3810q.m24071b().m24070c("enable_dialog_show");
    }

    /* renamed from: x */
    public static void m23971x(Activity activity, AbstractC2778c abstractC2778c) {
        if (!C3820b.m24024l()) {
            if (abstractC2778c == null) {
                return;
            }
            abstractC2778c.mo25101a();
            return;
        }
        View inflate = LayoutInflater.from(activity).inflate(R$layout.dialog_recorder_permission, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.dialog_record_guide_title);
        textView.getPaint().setFakeBoldText(true);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_contents_1);
        TextView textView3 = (TextView) inflate.findViewById(R$id.tv_contents_2);
        TextView textView4 = (TextView) inflate.findViewById(R$id.tv_not_now);
        TextView textView5 = (TextView) inflate.findViewById(R$id.tv_continue);
        TextView textView6 = (TextView) inflate.findViewById(R$id.tv_record_audio_per);
        TextView textView7 = (TextView) inflate.findViewById(R$id.tv_record_audio_per_content);
        TextView textView8 = (TextView) inflate.findViewById(R$id.tv_storage_per);
        TextView textView9 = (TextView) inflate.findViewById(R$id.tv_storage_per_content);
        TextView textView10 = (TextView) inflate.findViewById(R$id.tv_accessibility_per);
        TextView textView11 = (TextView) inflate.findViewById(R$id.tv_accessibility_per_content);
        textView4.getPaint().setFakeBoldText(true);
        textView5.getPaint().setFakeBoldText(true);
        textView6.getPaint().setFakeBoldText(true);
        textView8.getPaint().setFakeBoldText(true);
        textView10.getPaint().setFakeBoldText(true);
        Typeface m24359b = C3739f1.m24359b();
        textView.setTypeface(m24359b);
        textView2.setTypeface(m24359b);
        textView3.setTypeface(m24359b);
        textView4.setTypeface(m24359b);
        textView5.setTypeface(m24359b);
        textView6.setTypeface(m24359b);
        textView7.setTypeface(m24359b);
        textView8.setTypeface(m24359b);
        textView9.setTypeface(m24359b);
        textView10.setTypeface(m24359b);
        textView11.setTypeface(m24359b);
        View$OnClickListenerC3834g view$OnClickListenerC3834g = new View$OnClickListenerC3834g(abstractC2778c);
        textView4.setOnClickListener(view$OnClickListenerC3834g);
        textView5.setOnClickListener(view$OnClickListenerC3834g);
        AlertDialog create = new AlertDialog.Builder(activity).setView(inflate).create();
        f12112f = create;
        create.setCanceledOnTouchOutside(false);
        f12112f.show();
        C3820b.m24012x(false);
        C3810q.m24071b().m24070c("permissions_dialog_show");
    }

    /* renamed from: y */
    public static void m23970y(Activity activity, RecordCall recordCall, RecyclerView.Adapter adapter) {
        View inflate = LayoutInflater.from(activity).inflate(R$layout.dialog_recorder_remark, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.dialog_remark_title);
        TextView textView2 = (TextView) inflate.findViewById(R$id.dialog_remark_number);
        BaseEditText baseEditText = (BaseEditText) inflate.findViewById(R$id.dialog_remark_et);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.dialog_remark_submit_fl);
        TextView textView3 = (TextView) inflate.findViewById(R$id.open_agree_tv);
        ImageView imageView = (ImageView) inflate.findViewById(R$id.dialog_remark_close);
        Typeface m24359b = C3739f1.m24359b();
        textView.setTypeface(m24359b);
        baseEditText.setTypeface(m24359b);
        textView3.setTypeface(m24359b);
        textView2.setTypeface(m24359b);
        if (recordCall.getRemark() != null) {
            baseEditText.setText(recordCall.getRemark());
            baseEditText.setSelection(recordCall.getRemark().length());
            baseEditText.selectAll();
            textView2.setText(baseEditText.length() + "/200");
        }
        baseEditText.addTextChangedListener(new C3844p(textView2, baseEditText, activity));
        View$OnClickListenerC3845q view$OnClickListenerC3845q = new View$OnClickListenerC3845q(baseEditText, recordCall, adapter, activity);
        frameLayout.setOnClickListener(view$OnClickListenerC3845q);
        imageView.setOnClickListener(view$OnClickListenerC3845q);
        AlertDialog create = new AlertDialog.Builder(activity).setView(inflate).create();
        f12108b = create;
        create.show();
    }

    /* renamed from: z */
    public static void m23969z(View view, int i, int i2, int i3, int i4) {
        if (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).setMargins(i, i2, i3, i4);
            view.requestLayout();
        }
    }
}
