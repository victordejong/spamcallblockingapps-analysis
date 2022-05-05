package p459j.p460a.p564s;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.style.ForegroundColorSpan;
import android.util.Pair;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.core.app.ActivityCompat;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import androidx.work.Data;
import androidx.work.PeriodicWorkRequest;
import com.appsflyer.internal.referrer.Payload;
import com.google.common.base.Joiner;
import com.mopub.common.AdType;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.AdsSettingsKt;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.job.DailySyncJobWorker;
import gogolook.callgogolook2.job.TestDailySyncJobWorker;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.p074ad.AdConstant;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.p074ad.WCMoPubAdUnitConfiguration;
import gogolook.callgogolook2.realm.obj.block.BlockListRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject;
import gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject;
import gogolook.callgogolook2.realm.obj.note.NoteRealmObject;
import gogolook.callgogolook2.realm.obj.tag.TagRealmObject;
import gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject;
import gogolook.callgogolook2.template.CallEndDialogTemplateActivity;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONObject;
import p081h.p160h.p172b.p173a.C6295d;
import p081h.p160h.p174c.C6311c;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p081h.p160h.p179e.p180a.p188o.C6406d;
import p081h.p203i.p316b.p318b.AbstractC9328j;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p463b0.p466s.C11243e;
import p459j.p460a.p474c0.p488f.C11843o;
import p459j.p460a.p474c0.p488f.p490q.AbstractC11893j;
import p459j.p460a.p474c0.p488f.p490q.C11864c;
import p459j.p460a.p474c0.p488f.p490q.C11876e;
import p459j.p460a.p474c0.p488f.p490q.C11885g;
import p459j.p460a.p474c0.p488f.p490q.C11888h;
import p459j.p460a.p474c0.p488f.p490q.C11898k;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p513i.AbstractC12402b;
import p459j.p460a.p513i.AbstractC12404c;
import p459j.p460a.p515i0.p516a.C12419d;
import p459j.p460a.p515i0.p516a.C12436l;
import p459j.p460a.p530k.AbstractAsyncTaskC12818a;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p541n0.C13057d;
import p459j.p460a.p541n0.C13085e;
import p459j.p460a.p541n0.C13092f;
import p459j.p460a.p541n0.C13096g;
import p459j.p460a.p541n0.C13175m;
import p459j.p460a.p541n0.C13182n;
import p459j.p460a.p541n0.C13190o;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13198r;
import p459j.p460a.p541n0.C13217t;
import p459j.p460a.p549o0.C13297a;
import p459j.p460a.p554q.p558f.C13376a;
import p459j.p460a.p564s.DialogC13566w;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p569u0.C13659c;
import p459j.p460a.p569u0.C13666e;
import p459j.p460a.p569u0.C13673f;
import p459j.p460a.p569u0.C13679g;
import p459j.p460a.p569u0.DialogC13655b;
import p459j.p460a.p569u0.DialogC13661d;
import p459j.p460a.p576w.p577n.C13760c;
import p459j.p460a.p576w.p577n.C13773d;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C13987e3;
import p459j.p460a.p582w0.C14000f2;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14031j;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14198w;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p582w0.p587d5.C13975b;
import p459j.p460a.p582w0.p587d5.C13976c;
import p459j.p460a.p582w0.p589f5.C14005a;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14296p;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p596x.p598l.C14409c;
import p459j.p460a.p596x.p598l.C14416d;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.DialogC14625g;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.s.w */
/* loaded from: classes2-dex2jar.jar:j/a/s/w.class */
public class DialogC13566w extends AbstractDialogC13459p {

    /* renamed from: v */
    public static final String[] f30471v = {"https://www.google.com", "https://play.google.com/store/apps/details?id=gogolook.callgogolook2", "whoscall://goto?page=mainpage", "whoscall://goto?page=blocklist", "whoscall://goto?page=blockhistory", "whoscall://goto?page=calllog", "whoscall://goto?page=calllog&action=share", "whoscall://goto?page=favorite", "whoscall://goto?page=exploration", "whoscall://goto?page=ndp&number=0223681234", "whoscall://goto?page=offlinedb", "whoscall://goto?page=contactlist", "whoscall://goto?page=newscenter", "whoscall://goto?page=settings&action=focus_calldialog", "whoscall://goto?page=settings&action=focus_smsdialog", "whoscall://goto?page=settings&action=focus_default_phone_app", "whoscall://goto?page=settings&action=focus_default_sms_app", "whoscall://goto?page=exploration_editorpick&editor_id=1", "whoscall://goto?page=dialer", "whoscall://goto?page=textsearch", "whoscall://goto?page=textsearch&gga_referer=test", "whoscall://goto?page=textsearch&keyword=麥當勞", "whoscall://goto?page=myreport", "whoscall://goto?page=iap_ad_free", "whoscall://goto?page=iap_ad_free&from=deep_link&action=start_iap_discount", "whoscall://goto?page=iap_ad_free&from=deep_link_speed", "whoscall://goto?page=iap_ad_free&from=deep_link_auto_update", "whoscall://goto?page=iap_ad_free&from=deep_link_ad_free", "whoscall://goto?page=fake_call", "whoscall://goto?page=carrier_id_setting", "https://www.facebook.com/whoscall.southkorea/", "https://www.facebook.com/WhosCall.Taiwan/", "https://www.facebook.com/whoscall.thailand/", "https://www.facebook.com/WhosCall/", "https://www.facebook.com/148353431949142/posts/837304719720673", "https://www.facebook.com/sharer/sharer.php&u=http%3A%2F%2Fwhoscall.com", "https://www.facebook.com/652060138231904", "whoscall://goto?action=image_share&content_id=news_0800&image_url=http%3A%2F%2Fi.imgur.com%2FmqIz7E6.png&image_link=http%3A%2F%2Fbit.ly%2Fnews-TW-1&share_content=0800%E9%96%8B%E9%A0%AD%E7%9A%84%E8%99%9F%E7%A2%BC%E5%BE%88%E5%B8%B8%E8%A6%8B%EF%BC%8C%E9%80%9A%E5%B8%B8%E6%98%AF%E5%A4%A7%E5%AE%B6%E7%86%9F%E7%9F%A5%E7%9A%84%E5%85%8D%E4%BB%98%E8%B2%BB%E5%B0%88%E7%B7%9A%EF%BC%8C%E4%BD%86%E7%95%B6%E4%BD%A0%E6%8E%A5%E5%88%B00800%E6%89%93%E4%BE%86%E7%9A%84%E9%9B%BB%E8%A9%B1%E6%99%82%EF%BC%8C%E5%B0%B1%E8%A6%81%E7%89%B9%E5%88%A5%E6%B3%A8%E6%84%8F%E5%9B%89%EF%BC%81%EF%BC%81%5Cn%E5%9B%A0%E7%82%BA0800%E5%8F%AA%E8%83%BD%E6%92%A5%E5%85%A5%E3%80%81%E4%B8%8D%E8%83%BD%E6%92%A5%E5%87%BA%EF%BC%8C%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AA%AA0800%E4%B8%8D%E5%8F%AF%E8%83%BD%E6%98%AF%E7%99%BC%E8%A9%B1%E7%AB%AF%EF%BC%8C%E6%B0%91%E7%9C%BE%E4%B8%8D%E6%87%89%E8%A9%B2%E6%8E%A5%E5%88%B0%E9%A1%AF%E7%A4%BA0800%E7%9A%84%E4%BE%86%E9%9B%BB%EF%BC%8C%E6%89%80%E4%BB%A5%E9%80%99%E9%80%9A%E9%9B%BB%E8%A9%B1%E5%BF%85%E5%AE%9A%E7%B6%93%E9%81%8E%E8%A9%90%E9%A8%99%E9%9B%86%E5%9C%98%E8%AE%8A%E9%80%A0%EF%BC%8C%E6%98%AF%E8%A6%81%E4%BE%86%E9%A8%99%E8%B5%B0%E4%BD%A0%E7%9A%84%E9%8C%A2%E5%95%8A%EF%BD%9E%EF%BD%9E%E5%A4%A7%E5%AE%B6%E8%AB%8B%E5%B0%8F%E5%BF%83%EF%BC%81%5Cn%E8%B6%95%E5%BF%AB%E5%88%86%E4%BA%AB%E9%80%99%E5%89%87%E8%B2%BC%E6%96%87%E7%B5%A6%E8%A6%AA%E6%9C%8B%E5%A5%BD%E5%8F%8B%EF%BC%8C%E5%A4%A7%E5%AE%B6%E4%B8%80%E8%B5%B7%E9%98%B2%E7%AF%84%E5%8F%AF%E6%83%A1%E7%9A%84%E8%A9%90%E9%A8%99%E9%9B%86%E5%9C%98%5Cn%5Cn%E4%BD%BF%E7%94%A8Whoscall%E6%8F%AA%E5%87%BA%E8%A9%90%E9%A8%99%E9%9B%86%E5%9C%98%E7%9C%9F%E9%9D%A2%E7%9B%AE%20http%3A%2F%2Fs.whoscall.com%2Fwhoscallfb3d", "whoscall://goto?page=newscenter&action=image_share&content_id=news_0800&image_url=http%3A%2F%2Fi.imgur.com%2FmqIz7E6.png&dialog_title=abc&share_content=0800%E9%96%8B%E9%A0%AD%E7%9A%84%E8%99%9F%E7%A2%BC%E5%BE%88%E5%B8%B8%E8%A6%8B%EF%BC%8C%E9%80%9A%E5%B8%B8%E6%98%AF%E5%A4%A7%E5%AE%B6%E7%86%9F%E7%9F%A5%E7%9A%84%E5%85%8D%E4%BB%98%E8%B2%BB%E5%B0%88%E7%B7%9A%EF%BC%8C%E4%BD%86%E7%95%B6%E4%BD%A0%E6%8E%A5%E5%88%B00800%E6%89%93%E4%BE%86%E7%9A%84%E9%9B%BB%E8%A9%B1%E6%99%82%EF%BC%8C%E5%B0%B1%E8%A6%81%E7%89%B9%E5%88%A5%E6%B3%A8%E6%84%8F%E5%9B%89%EF%BC%81%EF%BC%81%5Cn%E5%9B%A0%E7%82%BA0800%E5%8F%AA%E8%83%BD%E6%92%A5%E5%85%A5%E3%80%81%E4%B8%8D%E8%83%BD%E6%92%A5%E5%87%BA%EF%BC%8C%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AA%AA0800%E4%B8%8D%E5%8F%AF%E8%83%BD%E6%98%AF%E7%99%BC%E8%A9%B1%E7%AB%AF%EF%BC%8C%E6%B0%91%E7%9C%BE%E4%B8%8D%E6%87%89%E8%A9%B2%E6%8E%A5%E5%88%B0%E9%A1%AF%E7%A4%BA0800%E7%9A%84%E4%BE%86%E9%9B%BB%EF%BC%8C%E6%89%80%E4%BB%A5%E9%80%99%E9%80%9A%E9%9B%BB%E8%A9%B1%E5%BF%85%E5%AE%9A%E7%B6%93%E9%81%8E%E8%A9%90%E9%A8%99%E9%9B%86%E5%9C%98%E8%AE%8A%E9%80%A0%EF%BC%8C%E6%98%AF%E8%A6%81%E4%BE%86%E9%A8%99%E8%B5%B0%E4%BD%A0%E7%9A%84%E9%8C%A2%E5%95%8A%EF%BD%9E%EF%BD%9E%E5%A4%A7%E5%AE%B6%E8%AB%8B%E5%B0%8F%E5%BF%83%EF%BC%81%5Cn%E8%B6%95%E5%BF%AB%E5%88%86%E4%BA%AB%E9%80%99%E5%89%87%E8%B2%BC%E6%96%87%E7%B5%A6%E8%A6%AA%E6%9C%8B%E5%A5%BD%E5%8F%8B%EF%BC%8C%E5%A4%A7%E5%AE%B6%E4%B8%80%E8%B5%B7%E9%98%B2%E7%AF%84%E5%8F%AF%E6%83%A1%E7%9A%84%E8%A9%90%E9%A8%99%E9%9B%86%E5%9C%98%5Cn%5Cn%E4%BD%BF%E7%94%A8Whoscall%E6%8F%AA%E5%87%BA%E8%A9%90%E9%A8%99%E9%9B%86%E5%9C%98%E7%9C%9F%E9%9D%A2%E7%9B%AE%20http%3A%2F%2Fs.whoscall.com%2Fwhoscallfb3d", "whoscall://goto?action=in_app_dialog_full&message_name=spammmm&image_url=http%3A%2F%2Fi.imgur.com%2FmqIz7E6.png&image_link=http%3A%2F%2Fbit.ly%2Fnews-TW-1&button_positive_wording=Post%20to%20Facebook&button_positive_link=whoscall%3A%2F%2Fgoto%3Faction%3Dpost_to_facebook%26link_url%3Dhttp%3A%2F%2Fd.whoscall.com%2F0800_1a&button_positive_close=true&button_negative_wording=Close", "whoscall://goto?page=newscenter&action=in_app_dialog_full&message_name=spammmm&image_url=http%3A%2F%2Fi.imgur.com%2FmqIz7E6.png&image_link=http%3A%2F%2Fbit.ly%2Fnews-TW-1&button_positive_wording=Post%20to%20Facebook&button_positive_link=whoscall%3A%2F%2Fgoto%3Faction%3Dpost_to_facebook%26link_url%3Dhttp%3A%2F%2Fd.whoscall.com%2F0800_1a&button_positive_close=true&button_negative_wording=Close", "whoscall://goto?action=in_app_dialog&message_name=spammmm&image_url=http%3A%2F%2Fi.imgur.com%2FmqIz7E6.png&image_link=http%3A%2F%2Fbit.ly%2Fnews-TW-1&button_positive_wording=Post%20to%20Facebook&button_positive_link=whoscall%3A%2F%2Fgoto%3Faction%3Dpost_to_facebook%26link_url%3Dhttp%3A%2F%2Fd.whoscall.com%2F0800_1a&button_positive_close=true&button_negative_wording=Close&title=%E6%B3%A8%E6%84%8F%E8%A9%90%E9%A8%99&content=0800%E4%B8%8D%E8%83%BD%E6%8E%A5%E5%96%94%E5%96%94%E5%96%94%E5%96%94%E5%96%94%E5%96%94%EF%BD%9E", "whoscall://goto?page=newscenter&action=in_app_dialog&message_name=spammmm&image_url=http%3A%2F%2Fi.imgur.com%2FmqIz7E6.png&image_link=http%3A%2F%2Fbit.ly%2Fnews-TW-1&button_positive_wording=Post%20to%20Facebook&button_positive_link=whoscall%3A%2F%2Fgoto%3Faction%3Dpost_to_facebook%26link_url%3Dhttp%3A%2F%2Fd.whoscall.com%2F0800_1a&button_positive_close=true&button_negative_wording=Close&title=%E6%B3%A8%E6%84%8F%E8%A9%90%E9%A8%99&content=0800%E4%B8%8D%E8%83%BD%E6%8E%A5%E5%96%94%E5%96%94%E5%96%94%E5%96%94%E5%96%94%E5%96%94%EF%BD%9E", "whoscall://goto?page=offlinedb&action=referred", "whoscall://goto?page=referral", "whoscall://goto?page=vas", "whoscall://goto?page=redeem", "whoscall://goto?page=referal&action=referred", "whoscall://goto?page=web_page&web_page_title=Whoscall&web_page_url=https%3A%2F%2Fwhoscall.com%2Fzh-TW%2F", "whoscall://goto?page=guardian", "whoscall://goto?page=notification_access_setting", C13297a.f29905c, C13297a.f29904b, C13297a.f29906d, C13297a.f29907e, C14198w.m2242a(AbstractC9328j.m15421of("page", "iap_ad_free", "from", "notification", "material", "auto_update"))};

    /* renamed from: w */
    public static final String[] f30472w = {"==select image==", "https://i.imgur.com/DJG1aF4.jpg", "https://i.imgur.com/ggvWFBo.jpg", "https://i.imgur.com/xovuE25.jpg", "https://i.imgur.com/uSGbEFG.jpg", "https://i.imgur.com/mAuzhW9.jpg", "https://i.imgur.com/8J0DPac.jpg"};

    /* renamed from: x */
    public static String[] f30473x = {"+886223681234", "+819096856566", "+919830288616", "+62313554422", "+6621343888", "+85231659394", "+886225500561", "+886228832252", "+886982469995", "+886982445669", "+886981404697", "+886277056534", "+886277056536", "+886936447921", "+886227681413", "+886982469993", "+886982469994", "+886982445668", "+886277056535", "+886982406075", "+886981404698", "+886982469992", "+886982469991", "+886982426686", "+886277056533", "+886981404696", "+886966502442", "+886966245286", "+886916604965", "+886902443656", "+886906017420", "+886905666026", "+85297925637", "+886916605551", "+886938719500", "+886971107076", "+886909456573", "+886958624866", "+886928490184", "+886928490143", "+886906046631", "+886906047534", "+886908408237", "+886908408023", "+886903117381", "+886966330075", "+886900030746", "+886984384250", "+886965457661", "+886906240222", "+886934060203", "+886939437626", "+886922371399", "+886952581515", "+886924300456", "+886972524329", "+886935407150", "+886970858445", "+886955981876", "+886931531549", "+886937247519", "+886914327408", "+886918513752", "+886916522921", "+886925644134", "+886920975389", "+886938638867", "+886968089168", "+886918577588", "+886928212054", "+886938339560", "+886961795577", "+886986758134", "+886917482768", "+886932819974", "+886987359183", "+886955930175", "+886986908506", "+886970808038", "+886938873261", "+886933575225", "+886954634198", "+886910911983", "+886971385166", "+886982146906", "+886963983190", "+886920088502", "+886928823681", "+886982362538", "+886915919425", "+886954174050", "+886917495206", "+886918741978", "+886955173363", "+886929150605", "+886923310804", "+886926547636", "+886971274343", "+886926626748", "+886952739125"};

    /* renamed from: t */
    public boolean f30474t;

    /* renamed from: u */
    public Activity f30475u;

    /* renamed from: j.a.s.w$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$a.class */
    public class DialogInterface$OnClickListenerC13567a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30476a;

        /* renamed from: j.a.s.w$a$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/w$a$a.class */
        public class C13568a implements Action1<Boolean> {
            public C13568a(DialogInterface$OnClickListenerC13567a aVar) {
            }

            /* renamed from: a */
            public void call(Boolean bool) {
            }
        }

        /* renamed from: j.a.s.w$a$b */
        /* loaded from: classes2-dex2jar.jar:j/a/s/w$a$b.class */
        public class C13569b implements Action1<Throwable> {
            public C13569b(DialogInterface$OnClickListenerC13567a aVar) {
            }

            /* renamed from: a */
            public void call(Throwable th) {
                C13973d4.m2952a(th);
            }
        }

        /* renamed from: j.a.s.w$a$c */
        /* loaded from: classes2-dex2jar.jar:j/a/s/w$a$c.class */
        public class C13570c implements Single.OnSubscribe<Boolean> {

            /* renamed from: a */
            public final /* synthetic */ int f30477a;

            public C13570c(DialogInterface$OnClickListenerC13567a aVar, int i) {
                this.f30477a = i;
            }

            /* renamed from: a */
            public void call(SingleSubscriber<? super Boolean> singleSubscriber) {
                FavoriteListRealmObject favoriteListRealmObject;
                FavoriteGroupRealmObject favoriteGroupRealmObject;
                NoteRealmObject noteRealmObject;
                TagRealmObject tagRealmObject;
                WhiteListRealmObject whiteListRealmObject;
                BlockListRealmObject blockListRealmObject;
                MySpamRealmObject mySpamRealmObject;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = new ArrayList();
                ArrayList arrayList6 = new ArrayList();
                new ArrayList();
                int d = C13175m.m4467d();
                for (int i = 0; i < DialogC13566w.f30473x.length && i < this.f30477a; i++) {
                    List<MySpamRealmObject> a = C13175m.m4470a(C13193p.m4437a("_e164"), C13193p.m4438a(DialogC13566w.f30473x[i]), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                    if (a == null || a.size() <= 0) {
                        mySpamRealmObject = new MySpamRealmObject();
                        d++;
                        mySpamRealmObject.setId(d);
                        mySpamRealmObject.set_number(DialogC13566w.f30473x[i]);
                        mySpamRealmObject.set_e164(DialogC13566w.f30473x[i]);
                        mySpamRealmObject.set_reason("Test Reason");
                        mySpamRealmObject.set_createtime(System.currentTimeMillis());
                        mySpamRealmObject.set_updatetime(System.currentTimeMillis());
                    } else {
                        mySpamRealmObject = a.get(0);
                        mySpamRealmObject.set_updatetime(System.currentTimeMillis());
                        mySpamRealmObject.set_status(3);
                    }
                    arrayList.add(mySpamRealmObject);
                }
                int c = C13032a.m4744c();
                for (int i2 = 0; i2 < DialogC13566w.f30473x.length && i2 < this.f30477a; i2++) {
                    String[] a2 = C13193p.m4437a("_e164", "_type");
                    Object[] a3 = C13193p.m4438a(DialogC13566w.f30473x[i2], 7);
                    C13193p.EnumC13194a aVar = C13193p.EnumC13194a.EQUAL_TO;
                    List<BlockListRealmObject> a4 = C13032a.m4748a(a2, a3, C13193p.m4439a(aVar, aVar), null, null);
                    if (a4 == null || a4.size() <= 0) {
                        blockListRealmObject = new BlockListRealmObject();
                        c++;
                        blockListRealmObject.setId(c);
                        blockListRealmObject.set_number(DialogC13566w.f30473x[i2]);
                        blockListRealmObject.set_e164(DialogC13566w.f30473x[i2]);
                        blockListRealmObject.set_type(1);
                        blockListRealmObject.set_kind(1);
                        blockListRealmObject.set_createtime(System.currentTimeMillis());
                        blockListRealmObject.set_updatetime(System.currentTimeMillis());
                    } else {
                        blockListRealmObject = a4.get(0);
                        blockListRealmObject.set_updatetime(System.currentTimeMillis());
                        blockListRealmObject.set_status(3);
                    }
                    arrayList2.add(blockListRealmObject);
                }
                int f = C13217t.m4393f();
                for (int i3 = 0; i3 < DialogC13566w.f30473x.length && i3 < this.f30477a; i3++) {
                    List<WhiteListRealmObject> a5 = C13217t.m4398a(C13193p.m4437a("_e164"), C13193p.m4438a(DialogC13566w.f30473x[i3]), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                    if (a5 == null || a5.size() <= 0) {
                        whiteListRealmObject = new WhiteListRealmObject();
                        f++;
                        whiteListRealmObject.setId(f);
                        whiteListRealmObject.set_e164(DialogC13566w.f30473x[i3]);
                        whiteListRealmObject.set_deleted(0);
                        whiteListRealmObject.set_createtime(System.currentTimeMillis());
                        whiteListRealmObject.set_updatetime(System.currentTimeMillis());
                    } else {
                        whiteListRealmObject = a5.get(0);
                        whiteListRealmObject.set_updatetime(System.currentTimeMillis());
                        whiteListRealmObject.set_deleted(0);
                        whiteListRealmObject.set_status(3);
                    }
                    arrayList3.add(whiteListRealmObject);
                }
                int d2 = C13198r.m4423d();
                for (int i4 = 0; i4 < DialogC13566w.f30473x.length && i4 < this.f30477a; i4++) {
                    List<TagRealmObject> a6 = C13198r.m4426a(C13193p.m4437a("_e164"), C13193p.m4438a(DialogC13566w.f30473x[i4]), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                    if (a6 == null || a6.size() <= 0) {
                        tagRealmObject = new TagRealmObject();
                        d2++;
                        tagRealmObject.setId(d2);
                        tagRealmObject.set_e164(DialogC13566w.f30473x[i4]);
                        tagRealmObject.set_userid("");
                        tagRealmObject.set_name("Test name_" + i4);
                        tagRealmObject.set_type(0);
                        tagRealmObject.set_visibility(0);
                        tagRealmObject.set_createtime(System.currentTimeMillis());
                        tagRealmObject.set_updatetime(System.currentTimeMillis());
                    } else {
                        tagRealmObject = a6.get(0);
                        tagRealmObject.set_updatetime(System.currentTimeMillis());
                        tagRealmObject.set_status(3);
                    }
                    arrayList4.add(tagRealmObject);
                }
                int d3 = C13182n.m4453d();
                for (int i5 = 0; i5 < DialogC13566w.f30473x.length && i5 < this.f30477a; i5++) {
                    List<NoteRealmObject> a7 = C13182n.m4456a(C13193p.m4437a("_e164"), C13193p.m4438a(DialogC13566w.f30473x[i5]), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                    if (a7 == null || a7.size() <= 0) {
                        noteRealmObject = new NoteRealmObject();
                        d3++;
                        noteRealmObject.setId(d3);
                        noteRealmObject.set_e164(DialogC13566w.f30473x[i5]);
                        noteRealmObject.set_content("Test Content");
                        noteRealmObject.set_createtime(System.currentTimeMillis());
                        noteRealmObject.set_updatetime(System.currentTimeMillis());
                    } else {
                        noteRealmObject = a7.get(0);
                        noteRealmObject.set_updatetime(System.currentTimeMillis());
                        noteRealmObject.set_status(3);
                    }
                    arrayList5.add(noteRealmObject);
                }
                int e = C13057d.m4673e();
                for (int i6 = 0; i6 < DialogC13566w.f30473x.length && i6 < this.f30477a; i6++) {
                    String[] a8 = C13193p.m4437a("_name");
                    List<FavoriteGroupRealmObject> a9 = C13057d.m4685a(a8, C13193p.m4438a("Test_Name_" + i6), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                    if (a9 == null || a9.size() <= 0) {
                        favoriteGroupRealmObject = new FavoriteGroupRealmObject();
                        e++;
                        favoriteGroupRealmObject.setId(e);
                        favoriteGroupRealmObject.set_name("Test_Name_" + i6);
                        favoriteGroupRealmObject.set_parentid("Test Parent Id");
                        favoriteGroupRealmObject.set_label_id(10);
                        favoriteGroupRealmObject.set_pinned(10);
                        favoriteGroupRealmObject.set_createtime(System.currentTimeMillis());
                        favoriteGroupRealmObject.set_updatetime(System.currentTimeMillis());
                    } else {
                        favoriteGroupRealmObject = a9.get(0);
                        favoriteGroupRealmObject.set_parentid("Test Parent Id");
                        favoriteGroupRealmObject.set_updatetime(System.currentTimeMillis());
                        favoriteGroupRealmObject.set_status(3);
                    }
                    arrayList6.add(favoriteGroupRealmObject);
                }
                C13057d.m4688a(arrayList6);
                int f2 = C13057d.m4672f();
                for (int i7 = 0; i7 < DialogC13566w.f30473x.length && i7 < this.f30477a; i7++) {
                    List<FavoriteListRealmObject> b = C13057d.m4679b(C13193p.m4437a("_e164"), C13193p.m4438a(DialogC13566w.f30473x[i7]), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                    if (b == null || b.size() <= 0) {
                        favoriteListRealmObject = new FavoriteListRealmObject();
                        f2++;
                        favoriteListRealmObject.setId(f2);
                        favoriteListRealmObject.set_e164(DialogC13566w.f30473x[i7]);
                        favoriteListRealmObject.set_parentid("Test_Name_" + i7);
                        favoriteListRealmObject.set_count(0);
                        favoriteListRealmObject.set_source(0);
                        favoriteListRealmObject.set_createtime(System.currentTimeMillis());
                        favoriteListRealmObject.set_updatetime(System.currentTimeMillis());
                    } else {
                        favoriteListRealmObject = b.get(0);
                        favoriteListRealmObject.set_updatetime(System.currentTimeMillis());
                        favoriteListRealmObject.set_parentid("Test_Name_" + i7);
                        favoriteListRealmObject.set_status(3);
                    }
                    C13057d.m4696a(favoriteListRealmObject);
                    C13057d.m4689a(null, "Test_Name_" + i7, favoriteListRealmObject);
                }
                C13175m.m4472a(arrayList);
                C13032a.m4750a(arrayList2);
                C13217t.m4400a(arrayList3);
                C13198r.m4428a(arrayList4);
                C13182n.m4458a(arrayList5);
                singleSubscriber.onSuccess(true);
            }
        }

        public DialogInterface$OnClickListenerC13567a(DialogC13566w wVar, EditText editText) {
            this.f30476a = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Single.create(new C13570c(this, Integer.valueOf(this.f30476a.getText().toString()).intValue())).subscribeOn(Schedulers.from(C14174u.m2297g())).subscribe(new C13568a(this), new C13569b(this));
        }
    }

    /* renamed from: j.a.s.w$b */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$b.class */
    public class C13571b implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30478a;

        /* renamed from: b */
        public final /* synthetic */ Spinner f30479b;

        public C13571b(DialogC13566w wVar, EditText editText, Spinner spinner) {
            this.f30478a = editText;
            this.f30479b = spinner;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i != 0) {
                this.f30478a.setText((String) this.f30479b.getSelectedItem());
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: j.a.s.w$c */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$c.class */
    public class DialogInterface$OnClickListenerC13572c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30480a;

        /* renamed from: b */
        public final /* synthetic */ EditText f30481b;

        /* renamed from: c */
        public final /* synthetic */ EditText f30482c;

        /* renamed from: d */
        public final /* synthetic */ EditText f30483d;

        /* renamed from: e */
        public final /* synthetic */ EditText f30484e;

        /* renamed from: f */
        public final /* synthetic */ EditText f30485f;

        /* renamed from: g */
        public final /* synthetic */ EditText f30486g;

        /* renamed from: h */
        public final /* synthetic */ EditText f30487h;

        public DialogInterface$OnClickListenerC13572c(EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, EditText editText6, EditText editText7, EditText editText8) {
            this.f30480a = editText;
            this.f30481b = editText2;
            this.f30482c = editText3;
            this.f30483d = editText4;
            this.f30484e = editText5;
            this.f30485f = editText6;
            this.f30486g = editText7;
            this.f30487h = editText8;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("title", this.f30480a.getText().toString());
                jSONObject2.put("type", "NAVIGATION");
                jSONObject2.put("button_text", this.f30481b.getText().toString());
                jSONObject2.put("button_link", this.f30482c.getText().toString());
                jSONObject2.put("message", this.f30483d.getText().toString());
                jSONObject2.put("link", this.f30484e.getText().toString());
                jSONObject2.put(TtmlNode.TAG_IMAGE, this.f30485f.getText().toString());
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("title", this.f30480a.getText().toString());
                jSONObject3.put("type", "NEWSFEED");
                jSONObject3.put("message", this.f30486g.getText().toString());
                jSONObject3.put("link", this.f30487h.getText().toString());
                jSONObject3.put(TtmlNode.TAG_IMAGE, this.f30485f.getText().toString());
                jSONObject.put("notification", jSONObject2);
                jSONObject.put("message", jSONObject3);
                jSONObject.put(AdType.CUSTOM, new JSONObject());
                jSONObject.put("id", "debug_push_" + ((int) (Math.random() * 1.0E8d)));
                jSONObject.put("from", AdConstant.APPSFLYER_GCM_PROJECT_NUMBER);
                C13987e3.m2932a(DialogC13566w.this.getContext(), jSONObject);
                C14687h.m861a(DialogC13566w.this.getContext(), "sending push", 0).m858c();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: j.a.s.w$d */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$d.class */
    public class DialogInterface$OnClickListenerC13573d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30489a;

        public DialogInterface$OnClickListenerC13573d(EditText editText) {
            this.f30489a = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (!C14108o4.m2475k(this.f30489a.getText().toString())) {
                C14687h.m861a(DialogC13566w.this.getContext(), "not valid number", 0).m858c();
            } else {
                DialogC13566w.this.m3894m(this.f30489a.getText().toString());
            }
        }
    }

    /* renamed from: j.a.s.w$e */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$e.class */
    public class DialogInterface$OnClickListenerC13574e implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30491a;

        public DialogInterface$OnClickListenerC13574e(EditText editText) {
            this.f30491a = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            String obj = this.f30491a.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                Toast.makeText(DialogC13566w.this.getContext(), "Please input valid threshold", 1).show();
                return;
            }
            C13915b3.m3057b("pref_debug_call_dialog_popup_threshold", Long.parseLong(obj));
            Context context = DialogC13566w.this.getContext();
            Toast.makeText(context, "Threshold set to " + obj + " ms", 1).show();
        }
    }

    /* renamed from: j.a.s.w$f */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$f.class */
    public class DialogInterface$OnClickListenerC13575f implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DialogC14618f f30493a;

        public DialogInterface$OnClickListenerC13575f(DialogC14618f fVar) {
            this.f30493a = fVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            boolean a = this.f30493a.m1009a();
            C13915b3.m3055b("pref_debug_blocking_failed_emulation", a);
            Context context = DialogC13566w.this.getContext();
            Toast.makeText(context, "Blocking failed emulation set to " + a, 1).show();
        }
    }

    /* renamed from: j.a.s.w$g */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$g.class */
    public class DialogInterface$OnClickListenerC13576g implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC13576g(DialogC13566w wVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                C11843o.m8049c();
            } else {
                C11843o.m8048d();
            }
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.s.w$h */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$h.class */
    public class DialogInterface$OnClickListenerC13577h implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC13577h(DialogC13566w wVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                C11843o.m8049c();
            } else {
                C11843o.m8048d();
            }
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.s.w$i */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$i.class */
    public class DialogInterface$OnClickListenerC13578i implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30495a;

        /* renamed from: j.a.s.w$i$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/w$i$a.class */
        public class C13579a implements Action1<Pair<String, Integer>> {
            public C13579a() {
            }

            /* renamed from: a */
            public void call(Pair<String, Integer> pair) {
                Context context = DialogC13566w.this.getContext();
                C14687h.m861a(context, ((String) pair.first) + " : " + C14005a.m2893a(((Integer) pair.second).intValue()), 1).m858c();
            }
        }

        /* renamed from: j.a.s.w$i$b */
        /* loaded from: classes2-dex2jar.jar:j/a/s/w$i$b.class */
        public class C13580b implements Action1<Throwable> {
            public C13580b() {
            }

            /* renamed from: a */
            public void call(Throwable th) {
                C14687h.m861a(DialogC13566w.this.getContext(), th.getMessage(), 1).m858c();
            }
        }

        /* renamed from: j.a.s.w$i$c */
        /* loaded from: classes2-dex2jar.jar:j/a/s/w$i$c.class */
        public class C13581c implements Single.OnSubscribe<Pair<String, Integer>> {
            public C13581c() {
            }

            /* renamed from: a */
            public void call(SingleSubscriber<? super Pair<String, Integer>> singleSubscriber) {
                C14005a.C14006a a = C14005a.m2890a(DialogInterface$OnClickListenerC13578i.this.f30495a.getText().toString(), C13640c.m3745d().m3748b("url_redirect_check_max"), (C14005a.C14007b) null);
                Integer b = C14005a.m2881b("debug_mode_msg_body", a.m2873a(), (C14005a.C14007b) null);
                singleSubscriber.onSuccess(new Pair(a.m2873a(), Integer.valueOf(b == null ? 0 : b.intValue())));
            }
        }

        public DialogInterface$OnClickListenerC13578i(EditText editText) {
            this.f30495a = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Single.create(new C13581c()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C13579a(), new C13580b());
        }
    }

    /* renamed from: j.a.s.w$j */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$j.class */
    public class C13582j implements AbstractC11893j.AbstractC11897b {
        public C13582j(DialogC13566w wVar) {
        }

        @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j.AbstractC11897b
        /* renamed from: a */
        public void mo3874a(AbstractC11893j.AbstractC11894a aVar) {
        }

        @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j.AbstractC11897b
        /* renamed from: b */
        public void mo3873b(AbstractC11893j.AbstractC11894a aVar) {
        }
    }

    /* renamed from: j.a.s.w$k */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$k.class */
    public class C13583k extends Thread {

        /* renamed from: a */
        public final /* synthetic */ AbstractC11893j.AbstractC11897b f30500a;

        public C13583k(DialogC13566w wVar, AbstractC11893j.AbstractC11897b bVar) {
            this.f30500a = bVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            C11885g.C11886a aVar = new C11885g.C11886a(new C13434f0(this.f30500a));
            for (int i = 0; i < 10; i++) {
                C11885g a = aVar.m7977a();
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                C11898k.m7979a(a);
            }
        }
    }

    /* renamed from: j.a.s.w$l */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$l.class */
    public class DialogInterface$OnClickListenerC13584l implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30501a;

        /* renamed from: j.a.s.w$l$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/w$l$a.class */
        public class C13585a implements AbstractC11893j.AbstractC11897b {
            public C13585a(DialogInterface$OnClickListenerC13584l lVar) {
            }

            @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j.AbstractC11897b
            /* renamed from: a */
            public void mo3874a(AbstractC11893j.AbstractC11894a aVar) {
                if (aVar instanceof C11876e.C11879c) {
                    C11876e.C11879c cVar = (C11876e.C11879c) aVar;
                    C14080m2.m2616a("sms] filter} ham = " + cVar.m7996b() + ", spam = " + cVar.m7995c());
                }
            }

            @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j.AbstractC11897b
            /* renamed from: b */
            public void mo3873b(AbstractC11893j.AbstractC11894a aVar) {
            }
        }

        public DialogInterface$OnClickListenerC13584l(DialogC13566w wVar, EditText editText) {
            this.f30501a = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C11898k.m7979a(new C11885g.C11886a(new C11888h("debug.infer.key", null, this.f30501a.getText().toString(), new C13585a(this))).m7977a());
        }
    }

    /* renamed from: j.a.s.w$m */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$m.class */
    public class RunnableC13586m implements Runnable {
        public RunnableC13586m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C14137r4.m2372f()) {
                String i = DialogC13566w.this.m3903i();
                Context context = DialogC13566w.this.getContext();
                C14687h.m861a(context, "verifying number: " + i, 1).m858c();
                DialogC13566w.this.m3894m(i);
                return;
            }
            C14174u.m2293k().postDelayed(this, 100L);
        }
    }

    /* renamed from: j.a.s.w$n */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$n.class */
    public class AsyncTaskC13587n extends AbstractAsyncTaskC12818a {

        /* renamed from: l */
        public final /* synthetic */ String f30503l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AsyncTaskC13587n(Context context, boolean z, int i, String str) {
            super(context, z, i);
            this.f30503l = str;
        }

        @Override // p459j.p460a.p530k.AbstractAsyncTaskC12818a
        /* renamed from: a */
        public C12378a mo2365a() throws Exception {
            return C12378a.m6275a(C12378a.EnumC12382d.POST_DEBUG_NUMBER_VERIFY, C14017g4.m2810n().toUpperCase(), this.f30503l);
        }

        @Override // p459j.p460a.p530k.AbstractAsyncTaskC12818a
        /* renamed from: b */
        public boolean mo2364b(C12378a.C12380b bVar) throws Exception {
            int i;
            if (bVar != null && ((i = bVar.f27921b) == 200 || i == 251)) {
                C14092n3.m2583b("userNumber", C14108o4.m2474l(this.f30503l).substring(1));
                Context context = DialogC13566w.this.getContext();
                C14687h.m861a(context, "Number verified: " + this.f30503l, 1).m858c();
                if (bVar.f27921b != 251) {
                    return true;
                }
                UserProfile.m28145a(bVar.f27922c);
                return true;
            } else if (bVar == null || bVar.f27921b != 400) {
                return false;
            } else {
                C14687h.m861a(DialogC13566w.this.getContext(), "Your account is not in white list, ask Wes for it ", 1).m858c();
                return false;
            }
        }
    }

    /* renamed from: j.a.s.w$o */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$o.class */
    public class C13588o implements Single.OnSubscribe<Object> {
        public C13588o() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Object> singleSubscriber) {
            C13987e3.m2930b();
            C14296p.m1832a(DialogC13566w.this.getContext(), C13987e3.m2936a());
        }
    }

    /* renamed from: j.a.s.w$p */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$p.class */
    public class DialogInterface$OnClickListenerC13589p implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC13589p(DialogC13566w wVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                C6334a.m23211s().m23213q();
                C14261f.m1974a("gga_flush", (Bundle) null);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: j.a.s.w$q */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$q.class */
    public class DialogInterface$OnClickListenerC13590q implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC13590q(DialogC13566w wVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C14099o3.m2510n().m2536a(true);
        }
    }

    /* renamed from: j.a.s.w$r */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$r.class */
    public class DialogInterface$OnClickListenerC13591r implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ArrayAdapter f30506a;

        /* renamed from: b */
        public final /* synthetic */ AlertDialog.Builder f30507b;

        /* renamed from: j.a.s.w$r$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/w$r$a.class */
        public class DialogInterface$OnClickListenerC13592a implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ List f30509a;

            public DialogInterface$OnClickListenerC13592a(List list) {
                this.f30509a = list;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DialogC13661d dVar = new DialogC13661d(DialogC13566w.this.getContext(), (C13673f) this.f30509a.get(i));
                dialogInterface.dismiss();
                dVar.show();
            }
        }

        /* renamed from: j.a.s.w$r$b */
        /* loaded from: classes2-dex2jar.jar:j/a/s/w$r$b.class */
        public class DialogInterface$OnClickListenerC13593b implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ List f30511a;

            public DialogInterface$OnClickListenerC13593b(List list) {
                this.f30511a = list;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DialogC13655b bVar = new DialogC13655b(DialogC13566w.this.getContext());
                bVar.m3732b((C13673f) this.f30511a.get(i));
                C14217x3.m2156c(DialogC13566w.this.getContext(), CallEndDialogTemplateActivity.m26020a(DialogC13566w.this.getContext(), bVar.m3736a()));
                dialogInterface.dismiss();
                DialogC13566w.this.dismiss();
            }
        }

        public DialogInterface$OnClickListenerC13591r(ArrayAdapter arrayAdapter, AlertDialog.Builder builder) {
            this.f30506a = arrayAdapter;
            this.f30507b = builder;
        }

        /* renamed from: a */
        public /* synthetic */ void m3871a(List list, DialogInterface dialogInterface, int i) {
            new C13666e((C13673f) list.get(i)).m3705a(MyApplication.m29013o());
            dialogInterface.dismiss();
            DialogC13566w.this.dismiss();
        }

        /* renamed from: b */
        public /* synthetic */ void m3870b(List list, DialogInterface dialogInterface, int i) {
            C13659c.m3715b((C13673f) list.get(i));
            dialogInterface.dismiss();
            DialogC13566w.this.dismiss();
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f30506a.clear();
            if (i == 0) {
                List<C13673f> b = C13679g.m3691a().m3684b(C13673f.EnumC13678e.IN_APP_DIALOG);
                for (C13673f fVar : b) {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    spannableStringBuilder.append((CharSequence) "MESSAGE : ").append((CharSequence) DialogC13566w.this.m3919a(-65400, String.valueOf(fVar.f30649c))).append((CharSequence) "\n");
                    this.f30506a.add(spannableStringBuilder.toString());
                }
                this.f30507b.setAdapter(this.f30506a, new DialogInterface$OnClickListenerC13592a(b));
                dialogInterface.dismiss();
                this.f30507b.show();
            } else if (i == 1) {
                List<C13673f> b2 = C13679g.m3691a().m3684b(C13673f.EnumC13678e.CALL_END_DIALOG);
                for (C13673f fVar2 : b2) {
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                    spannableStringBuilder2.append((CharSequence) "MESSAGE : ").append((CharSequence) DialogC13566w.this.m3919a(-65400, String.valueOf(fVar2.f30649c))).append((CharSequence) "\n");
                    this.f30506a.add(spannableStringBuilder2.toString());
                }
                this.f30507b.setAdapter(this.f30506a, new DialogInterface$OnClickListenerC13593b(b2));
                dialogInterface.dismiss();
                this.f30507b.show();
            } else if (i == 2) {
                final List<C13673f> b3 = C13679g.m3691a().m3684b(C13673f.EnumC13678e.NOTIFICATION);
                for (C13673f fVar3 : b3) {
                    SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
                    spannableStringBuilder3.append((CharSequence) "MESSAGE : ").append((CharSequence) DialogC13566w.this.m3919a(-65400, String.valueOf(fVar3.f30649c))).append((CharSequence) "\n");
                    this.f30506a.add(spannableStringBuilder3.toString());
                }
                this.f30507b.setAdapter(this.f30506a, new DialogInterface.OnClickListener() { // from class: j.a.s.d
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface2, int i2) {
                        DialogC13566w.DialogInterface$OnClickListenerC13591r.this.m3871a(b3, dialogInterface2, i2);
                    }
                });
                dialogInterface.dismiss();
                this.f30507b.show();
            } else if (i == 3) {
                final List<C13673f> b4 = C13679g.m3691a().m3684b(C13673f.EnumC13678e.NOTIFICATION);
                for (C13673f fVar4 : b4) {
                    SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                    SpannableStringBuilder append = spannableStringBuilder4.append((CharSequence) "MESSAGE : ").append((CharSequence) DialogC13566w.this.m3919a(-65400, String.valueOf(fVar4.f30649c))).append((CharSequence) "| Current: ");
                    DialogC13566w wVar = DialogC13566w.this;
                    StringBuilder sb = new StringBuilder();
                    sb.append("");
                    sb.append(C13915b3.m3066a("prefs_total_for_" + fVar4.f30649c, 0));
                    append.append((CharSequence) wVar.m3919a(-65400, sb.toString())).append((CharSequence) "\n");
                    this.f30506a.add(spannableStringBuilder4.toString());
                }
                this.f30507b.setAdapter(this.f30506a, new DialogInterface.OnClickListener() { // from class: j.a.s.c
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface2, int i2) {
                        DialogC13566w.DialogInterface$OnClickListenerC13591r.this.m3870b(b4, dialogInterface2, i2);
                    }
                });
                dialogInterface.dismiss();
                this.f30507b.show();
            }
        }
    }

    /* renamed from: j.a.s.w$s */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$s.class */
    public class View$OnClickListenerC13594s implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Spinner f30513a;

        /* renamed from: b */
        public final /* synthetic */ Spinner f30514b;

        /* renamed from: c */
        public final /* synthetic */ Spinner f30515c;

        /* renamed from: d */
        public final /* synthetic */ Spinner f30516d;

        public View$OnClickListenerC13594s(DialogC13566w wVar, Spinner spinner, Spinner spinner2, Spinner spinner3, Spinner spinner4) {
            this.f30513a = spinner;
            this.f30514b = spinner2;
            this.f30515c = spinner3;
            this.f30516d = spinner4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Random random = new Random(System.currentTimeMillis());
            Spinner spinner = this.f30513a;
            spinner.setSelection(random.nextInt(spinner.getCount()));
            Spinner spinner2 = this.f30514b;
            spinner2.setSelection(random.nextInt(spinner2.getCount()));
            Spinner spinner3 = this.f30515c;
            spinner3.setSelection(random.nextInt(spinner3.getCount()));
            Spinner spinner4 = this.f30516d;
            spinner4.setSelection(random.nextInt(spinner4.getCount()));
        }
    }

    /* renamed from: j.a.s.w$t */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$t.class */
    public class C13595t implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30517a;

        /* renamed from: b */
        public final /* synthetic */ Spinner f30518b;

        public C13595t(DialogC13566w wVar, EditText editText, Spinner spinner) {
            this.f30517a = editText;
            this.f30518b = spinner;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i != 0) {
                this.f30517a.setText((String) this.f30518b.getSelectedItem());
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: j.a.s.w$u */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$u.class */
    public class C13596u implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30519a;

        /* renamed from: b */
        public final /* synthetic */ Spinner f30520b;

        public C13596u(DialogC13566w wVar, EditText editText, Spinner spinner) {
            this.f30519a = editText;
            this.f30520b = spinner;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i != 0) {
                this.f30519a.setText((String) this.f30520b.getSelectedItem());
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: j.a.s.w$v */
    /* loaded from: classes2-dex2jar.jar:j/a/s/w$v.class */
    public class C13597v implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30521a;

        /* renamed from: b */
        public final /* synthetic */ Spinner f30522b;

        public C13597v(DialogC13566w wVar, EditText editText, Spinner spinner) {
            this.f30521a = editText;
            this.f30522b = spinner;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i != 0) {
                this.f30521a.setText((String) this.f30522b.getSelectedItem());
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public DialogC13566w(Activity activity, boolean z) {
        super(activity);
        PreferenceManager.getDefaultSharedPreferences(getContext()).edit().putString("develop_whoscallversion", MyApplication.m29013o().getString(R$string.build_version)).apply();
        this.f30474t = z;
        this.f30475u = activity;
    }

    /* renamed from: A */
    public final void m3920A() {
        if (C12378a.f27903h.equalsIgnoreCase("https://api.whoscall.com")) {
            m4008e("<font color=\"green\">Product</font> Server");
        } else if (C12378a.f27903h.equalsIgnoreCase("https://api-production.whoscall.com")) {
            m4008e("<font color=\"red\">Seed</font> Server");
        } else {
            m4008e("<font color=\"red\">Staging</font> Server");
        }
        if (C12378a.f27907l.equalsIgnoreCase("https://searchapi.whoscall.com")) {
            m4009d("<font color=\"green\">TextSearch Product</font> Server ");
        } else if (C12378a.f27907l.equalsIgnoreCase("https://searchapi-staging.whoscall.com")) {
            m4009d("<font color=\"red\">TextSearch Staging</font> Server ");
        } else {
            m4009d("<font color=\"red\">TextSearch Test</font> Server ");
        }
        if (this.f30474t) {
            m4018b().setText(R$string.developmode_continue);
        } else {
            m4018b().setText(R$string.developmode_reopen);
        }
    }

    /* renamed from: a */
    public final SpannableString m3919a(int i, String str) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new ForegroundColorSpan(i), 0, str.length(), 0);
        return spannableString;
    }

    /* renamed from: a */
    public void m3918a(Context context, int i, int i2, Intent intent) {
        if (intent != null && intent.getData() != null && i == 104) {
            m3917a(intent.getData());
        }
    }

    /* renamed from: a */
    public final void m3917a(Uri uri) {
        InputStream openInputStream;
        StringBuilder sb = new StringBuilder();
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        try {
            try {
                try {
                    openInputStream = getContext().getContentResolver().openInputStream(uri);
                    byte[] bArr = new byte[Data.MAX_DATA_BYTES];
                    while (true) {
                        inputStream2 = openInputStream;
                        inputStream = openInputStream;
                        int read = openInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        sb.append(new String(bArr, 0, read));
                    }
                } catch (Exception e) {
                    inputStream2 = inputStream;
                    Toast.makeText(getContext(), e.getMessage(), 0).show();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                }
                if (openInputStream != null) {
                    openInputStream.close();
                }
            } catch (Throwable th) {
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        if (sb.length() > 0) {
            C13625a.m3781f(getContext(), sb.toString());
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m3916a(EditText editText, DialogInterface dialogInterface, int i) {
        String obj = editText.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            Toast.makeText(getContext(), "Please input valid gap", 0).show();
            return;
        }
        long max = Math.max(Long.parseLong(obj) * 60000, (long) PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS);
        C13915b3.m3057b("daily_sync_gap", max);
        C13915b3.m3057b("daily_sync_min_gap", max / 2);
        C13915b3.m3057b("report_sim_num_gap", 7 * max);
        TestDailySyncJobWorker.m27907c(getContext());
        Context context = getContext();
        Toast.makeText(context, "Gap set to " + (max / 60000) + " minutes", 1).show();
    }

    /* renamed from: a */
    public /* synthetic */ void m3912a(String str, DialogInterface dialogInterface, int i) {
        ((ClipboardManager) this.f30475u.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("Advertising Id", str));
    }

    @Override // p459j.p460a.p564s.AbstractDialogC13459p
    /* renamed from: a */
    public boolean mo3911a(String str, Object obj) {
        Method method;
        if (str.equalsIgnoreCase("develop_server_preference")) {
            C13565v.m3927a(obj);
            m3920A();
            if (C13565v.m3921g().m23335b()) {
                C13425c0.m4045i().m23317h();
            }
            m3883x();
            return true;
        } else if (str.equalsIgnoreCase("develop_auto_login")) {
            m3885v();
            return true;
        } else if (str.equalsIgnoreCase("develop_skip_login")) {
            C14376j.m1454b(getContext());
            return true;
        } else if (str.equalsIgnoreCase("develop_quick_choose_account_login")) {
            Activity activity = this.f30475u;
            new C14409c(new C14416d(activity, activity)).mo1372a();
            return true;
        } else {
            if (str.equals("generate_fake_sync_list")) {
                DialogC14618f fVar = new DialogC14618f(getContext());
                EditText editText = new EditText(getContext());
                editText.setRawInputType(8194);
                editText.setTextColor(-16777216);
                editText.setText("100");
                fVar.m1005a(editText);
                fVar.setTitle("Set data size for each sync type (maximum size 100)");
                fVar.m997b("Done", new DialogInterface$OnClickListenerC13567a(this, editText));
                if (C13878a3.m3244a(fVar)) {
                    return true;
                }
                C14687h.m861a(getContext(), "no draw over permission", 0).m858c();
                C13878a3.m3222c((Context) this.f30475u);
                return true;
            } else if (str.equalsIgnoreCase("customized_call_log_type")) {
                C13468s.m3995a(getContext());
                return true;
            } else if (str.equalsIgnoreCase("develop_country_preference")) {
                C13915b3.m3046e();
                C14217x3.m2207A();
                C13909c.m3070c();
                C14108o4.m2506a();
                C11243e.m9944e();
                if (C13565v.m3921g().m23335b()) {
                    C13425c0.m4045i().m23317h();
                }
                m3883x();
                return true;
            } else if (str.equalsIgnoreCase("develop_calllog")) {
                C13565v.m3921g().m23334b(getContext());
                return true;
            } else if (str.equalsIgnoreCase("develop_vas_db_preference")) {
                C13878a3.m3244a(new DialogC13470t(getContext(), "/data/data/gogolook.callgogolook2/databases/Vas.db", false));
                return true;
            } else if (str.equalsIgnoreCase("develop_sdksegment_preference")) {
                Single.create(new C13588o()).subscribeOn(Schedulers.computation()).subscribe();
                return true;
            } else if (str.equalsIgnoreCase("develop_offlinedbsdkinfo_preference")) {
                C6406d f = C12436l.m6169f();
                StringBuilder sb = new StringBuilder(100);
                sb.append("[Common DB]\n");
                sb.append("version: ");
                sb.append(C12419d.m6208e());
                sb.append("\n");
                sb.append("next version: ");
                sb.append(C12419d.m6206g());
                sb.append("\n");
                sb.append("type: ");
                sb.append(C12419d.m6209d());
                sb.append("\n");
                sb.append("next type: ");
                sb.append(C12419d.m6207f());
                sb.append("\n");
                sb.append("total basic num: ");
                sb.append(C12419d.m6214a(false));
                sb.append("\n");
                sb.append("total premium num: ");
                sb.append(C12419d.m6214a(true));
                sb.append("\n");
                sb.append("top top num: ");
                sb.append(C12419d.m6202k());
                sb.append("\n");
                sb.append("top num: ");
                sb.append(C12419d.m6203j());
                sb.append("\n");
                sb.append("spam num: ");
                sb.append(C12419d.m6204i());
                sb.append("\n");
                sb.append("\n");
                sb.append("[Personal DB]\n");
                sb.append("version: ");
                sb.append(f.m22748g());
                sb.append("\n");
                sb.append("utime: ");
                sb.append(f.m22751e());
                sb.append("\n");
                sb.append("total num: ");
                sb.append(f.m22753d());
                sb.append("\n");
                sb.append("cluster id: ");
                sb.append(f.m22759b());
                sb.append("\n");
                new AlertDialog.Builder(getContext()).setTitle("OfflineDb Info").setMessage(sb.toString()).show();
                return true;
            } else if (str.equalsIgnoreCase("develop_sdkinfo_preference")) {
                StringBuilder sb2 = new StringBuilder(64);
                sb2.append("Queue items : ");
                sb2.append(C6334a.m23211s().m23222h());
                sb2.append("\n");
                sb2.append("Next trigger time : ");
                Date date = new Date();
                date.setTime(C6334a.m23211s().m23252a("prefs_sdk_scheduletaskdelayed", 0L));
                sb2.append(date.toString());
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setTitle("SDK Info").setMessage(sb2.toString());
                builder.setPositiveButton("Send", new DialogInterface$OnClickListenerC13589p(this)).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
                return true;
            } else if (str.equalsIgnoreCase("random_deviceid")) {
                C13915b3.m3044e("random_deviceid_value", String.valueOf((int) (Math.random() * 100000.0d)));
                C12378a.m6257g();
                C14687h.m861a(getContext(), "new Id=" + C14017g4.m2820d(), 1).m858c();
                return true;
            } else if (str.equalsIgnoreCase("develop_show_preference")) {
                C13376a.m4113a(getContext(), C13565v.f30468f);
                return true;
            } else if (str.equalsIgnoreCase("token_expire")) {
                try {
                    Class<?> cls = Class.forName("com.gogolook.whoscallsdk.core.auth.UtilsTest");
                    if (obj.equals("expire after 1 day")) {
                        method = cls.getMethod("generatePreExpiredToken", String.class, String.class);
                        C6334a.m23211s().m23235b("pref_auth_expiredtime", System.currentTimeMillis());
                    } else {
                        method = obj.equals("expired") ? cls.getMethod("generateExpiredToken", String.class, String.class) : null;
                    }
                    if (method == null) {
                        return true;
                    }
                    C6334a.m23211s().m23233b("pref_auth_accesstoken", (String) method.invoke(null, C6364a.m22978b(), C6364a.m22969e()), true);
                    cls.getMethod("clearAccessToken", new Class[0]).invoke(null, new Object[0]);
                    return true;
                } catch (Exception e) {
                    e.printStackTrace();
                    C14687h.m861a(getContext(), "not debug sdk!!! cannot set token expired!!!", 0).m858c();
                    return true;
                }
            } else if (str.equalsIgnoreCase("show db update notification")) {
                C14063l4.m2674b(getContext());
                return true;
            } else if (str.equalsIgnoreCase("Send CS log")) {
                Bundle bundle = new Bundle();
                bundle.putString("title_postfix", "Debug info");
                C13884a4.m3175c(getContext(), true, bundle, null);
                return true;
            } else if (str.equalsIgnoreCase("Test handle sync result")) {
                m3881z();
                return true;
            } else if (str.equalsIgnoreCase("set_adn_test_source")) {
                WCMoPubAdUnitConfiguration.m28718b(obj.toString());
                return true;
            } else if (str.equalsIgnoreCase("develop_api_return_preference")) {
                C13975b.f31383a.m9459a("api_return_code", obj.toString());
                return true;
            } else if (str.equalsIgnoreCase("develop_get_crash")) {
                throw new RuntimeException("Test Crash");
            } else if (str.equals("reset_dau")) {
                TestDailySyncJobWorker.m27908a(getContext(), true);
                return true;
            } else if (str.equals("reset_viral")) {
                C13915b3.m3061a("prefs_share_ninfo_have_result_counts");
                C13915b3.m3061a("prefs_ninfo_have_result_counts");
                C13915b3.m3061a("prefs_taotal_block_counts");
                C13915b3.m3061a("prefs_total_tag_counts");
                for (int i = 0; i < 32; i++) {
                    C13915b3.m3061a("showMoonFestivalTimes" + i);
                }
                return true;
            } else if (str.equalsIgnoreCase("show server config")) {
                try {
                    List<C13673f> m = C14099o3.m2510n().m2511m();
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    spannableStringBuilder.append((CharSequence) "Configuration size : ").append((CharSequence) m3919a(-65400, String.valueOf(m.size()))).append((CharSequence) "\n");
                    for (int i2 = 0; i2 < m.size(); i2++) {
                        C13673f fVar2 = m.get(i2);
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "position : ").append((CharSequence) m3919a(-65400, String.valueOf(i2))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "id : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30647a))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "type : ").append((CharSequence) m3919a(-65400, fVar2.f30648b)).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "message name : ").append((CharSequence) m3919a(-65400, fVar2.f30649c)).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "title : ").append((CharSequence) m3919a(-65400, fVar2.f30650d)).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "content : ").append((CharSequence) m3919a(-65400, fVar2.f30651e)).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "start time : ").append((CharSequence) m3919a(-65400, C14123p4.m2425c(fVar2.f30659m * 1000))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "end time : ").append((CharSequence) m3919a(-65400, C14123p4.m2425c(fVar2.f30660n * 1000))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "max version : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30662p))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "min version : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30661o))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "new user only : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30665s))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "total : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30667u))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "min api level : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30671y))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "max api level : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30672z))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "install days less than : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30668v))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "install days greater than : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30669w))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "upgraded days less than : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30630A))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "upgraded days greater than : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30631B))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "is need save to newscenter : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30632C))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "newscenter title : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30635F))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "newscenter message : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30636G))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "newscenter image url : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30637H))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "newscenter link url : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30633D))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "newscenter link url use external browser : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30634E))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "default state : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30640K))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "iap state : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30641L))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "interval : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30642M))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "start display hour : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30638I))).append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) "end display hour : ").append((CharSequence) m3919a(-65400, String.valueOf(fVar2.f30639J))).append((CharSequence) "\n");
                    }
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(getContext());
                    builder2.setTitle("Config info");
                    builder2.setMessage(spannableStringBuilder);
                    builder2.setPositiveButton("Fetch Config", new DialogInterface$OnClickListenerC13590q(this)).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
                    return true;
                } catch (Exception e2) {
                    C14080m2.m2612a((Throwable) e2);
                    return true;
                }
            } else if (str.equalsIgnoreCase("Test show flexible dialog")) {
                ArrayAdapter arrayAdapter = new ArrayAdapter(getContext(), 17367058);
                ArrayAdapter arrayAdapter2 = new ArrayAdapter(getContext(), 17367058);
                arrayAdapter2.add("In App Dialog");
                arrayAdapter2.add("Call end Dialog");
                arrayAdapter2.add("Notification");
                arrayAdapter2.add("Reset Selected Notification View Count");
                AlertDialog.Builder builder3 = new AlertDialog.Builder(getContext());
                builder3.setTitle("Configs info");
                builder3.setNegativeButton("Cancel", (DialogInterface.OnClickListener) null);
                AlertDialog.Builder builder4 = new AlertDialog.Builder(getContext());
                builder4.setTitle("Config types");
                builder4.setAdapter(arrayAdapter2, new DialogInterface$OnClickListenerC13591r(arrayAdapter, builder3));
                builder4.setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
                return true;
            } else if (str.equalsIgnoreCase("develop_cleardata_preference")) {
                C13565v.m3921g().m3925d();
                Intent intent = new Intent(getContext(), MainActivity.class);
                intent.setFlags(67108864);
                getContext().startActivity(intent);
                dismiss();
                C13565v.m3921g().m23331c();
                return true;
            } else if (str.equals("develop_clearcache_preference")) {
                C11052i.m10328e().m10354a();
                return true;
            } else if (str.equals("show_expired_ab_key_toast")) {
                if (obj.equals(AdsSettingsKt.KEY_ENABLE)) {
                    C13915b3.m3055b("debug_show_expired_ab_key_toast", true);
                    return true;
                } else if (!obj.equals("disable")) {
                    return true;
                } else {
                    C13915b3.m3055b("debug_show_expired_ab_key_toast", false);
                    return true;
                }
            } else if (str.equals("abtesting_key")) {
                if (C13878a3.m3244a(new DialogC13456o(this.f30475u))) {
                    return true;
                }
                C14687h.m861a(getContext(), "no draw over permission", 0).m858c();
                C13878a3.m3222c((Context) this.f30475u);
                return true;
            } else if (str.equals("reset_abtesting_key")) {
                m3883x();
                return true;
            } else if (str.equals("random_value_key")) {
                C13878a3.m3244a(new DialogC13427d0(getContext()));
                return true;
            } else if (str.equalsIgnoreCase("googleservice_simulation_key")) {
                C13405a0.m4079a(this.f30475u);
                return true;
            } else if (str.equalsIgnoreCase("develop_push")) {
                ScrollView scrollView = new ScrollView(getContext());
                LinearLayout linearLayout = new LinearLayout(getContext());
                linearLayout.setOrientation(1);
                scrollView.addView(linearLayout);
                Spinner spinner = new Spinner(getContext());
                Spinner spinner2 = new Spinner(getContext());
                Spinner spinner3 = new Spinner(getContext());
                Spinner spinner4 = new Spinner(getContext());
                TextView textView = new TextView(getContext());
                EditText editText2 = new EditText(getContext());
                EditText editText3 = new EditText(getContext());
                EditText editText4 = new EditText(getContext());
                EditText editText5 = new EditText(getContext());
                EditText editText6 = new EditText(getContext());
                EditText editText7 = new EditText(getContext());
                EditText editText8 = new EditText(getContext());
                EditText editText9 = new EditText(getContext());
                editText9.setHint("notification link");
                TextView textView2 = new TextView(getContext());
                textView.setText("content will be the same as your link for debug");
                editText2.setText("title");
                editText2.setTextColor(-16777216);
                editText3.setText("news center Message");
                editText3.setTextColor(-16777216);
                editText4.setHint("news center link");
                editText4.setTextColor(-16777216);
                editText6.setText("button message");
                editText6.setTextColor(-16777216);
                editText7.setHint("button link");
                editText7.setTextColor(-16777216);
                editText8.setText("notification message");
                editText8.setTextColor(-16777216);
                editText9.setHint("notification link");
                editText9.setTextColor(-16777216);
                editText5.setHint("Image link");
                editText5.setTextColor(-16777216);
                textView2.setText("Generate random news");
                textView2.setBackgroundColor(-3355444);
                textView2.setTextColor(-16777216);
                int a = C14217x3.m2201a(6.0f);
                textView2.setPadding(a, a, a, a);
                textView.setPadding(0, 0, 0, C14217x3.m2201a(20.0f));
                linearLayout.addView(textView, -1, -2);
                linearLayout.addView(editText2, -1, -2);
                linearLayout.addView(spinner, -1, -2);
                linearLayout.addView(spinner4, -1, -2);
                linearLayout.addView(spinner2, -1, -2);
                linearLayout.addView(spinner3, -1, -2);
                linearLayout.addView(editText3, -1, -2);
                linearLayout.addView(editText4, -1, -2);
                linearLayout.addView(editText8, -1, -2);
                linearLayout.addView(editText9, -1, -2);
                linearLayout.addView(editText5, -1, -2);
                linearLayout.addView(editText6, -1, -2);
                linearLayout.addView(editText7, -1, -2);
                linearLayout.addView(textView2, -1, -2);
                textView2.setOnClickListener(new View$OnClickListenerC13594s(this, spinner, spinner2, spinner3, spinner4));
                ArrayList arrayList = new ArrayList();
                arrayList.add("==select newscenter link==");
                for (String str2 : f30471v) {
                    arrayList.add(str2);
                }
                ArrayAdapter arrayAdapter3 = new ArrayAdapter(getContext(), 17367048, arrayList.toArray(new String[0]));
                arrayAdapter3.setDropDownViewResource(17367049);
                spinner.setAdapter((SpinnerAdapter) arrayAdapter3);
                spinner.setOnItemSelectedListener(new C13595t(this, editText4, spinner));
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add("==select button link==");
                for (String str3 : f30471v) {
                    arrayList2.add(str3);
                }
                ArrayAdapter arrayAdapter4 = new ArrayAdapter(getContext(), 17367048, arrayList2.toArray(new String[0]));
                arrayAdapter4.setDropDownViewResource(17367049);
                spinner4.setAdapter((SpinnerAdapter) arrayAdapter4);
                spinner4.setOnItemSelectedListener(new C13596u(this, editText7, spinner4));
                ArrayAdapter arrayAdapter5 = new ArrayAdapter(getContext(), 17367048, f30472w);
                arrayAdapter5.setDropDownViewResource(17367049);
                spinner2.setAdapter((SpinnerAdapter) arrayAdapter5);
                spinner2.setOnItemSelectedListener(new C13597v(this, editText5, spinner2));
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add("==select notification link==");
                for (String str4 : f30471v) {
                    arrayList3.add(str4);
                }
                ArrayAdapter arrayAdapter6 = new ArrayAdapter(getContext(), 17367048, arrayList3.toArray(new String[0]));
                arrayAdapter6.setDropDownViewResource(17367049);
                spinner3.setAdapter((SpinnerAdapter) arrayAdapter6);
                spinner3.setOnItemSelectedListener(new C13571b(this, editText9, spinner3));
                new AlertDialog.Builder(getContext()).setView(scrollView).setPositiveButton("Go", new DialogInterface$OnClickListenerC13572c(editText2, editText6, editText7, editText8, editText9, editText5, editText3, editText4)).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
                return true;
            } else if (str.equalsIgnoreCase("develop_push_product_preference") || str.equalsIgnoreCase("develop_push_mode_preference")) {
                C13987e3.m2930b();
                return true;
            } else if (str.equalsIgnoreCase("develop_push_versioncode_preference")) {
                C13987e3.m2930b();
                return true;
            } else if (str.equalsIgnoreCase("develop_log_viewer")) {
                if (!C13604z.m3839j()) {
                    C13604z.m3840i();
                }
                if (C13604z.m3841h().m3846d()) {
                    C13604z.m3841h().m3856a();
                    return true;
                }
                C13604z.m3841h().m3842g();
                return true;
            } else if (str.equalsIgnoreCase("developer_popdialog")) {
                if (!C13565v.m3921g().m23335b()) {
                    return true;
                }
                C13425c0.m4045i().mo4046e();
                return true;
            } else if (str.equalsIgnoreCase("develop_number_verify")) {
                DialogC14618f fVar3 = new DialogC14618f(getContext());
                fVar3.setTitle("Please enter the number to verify");
                EditText editText10 = new EditText(getContext());
                editText10.setText("+886");
                editText10.setInputType(3);
                editText10.setBackgroundResource(R$drawable.edit_text_selector);
                editText10.setText("+886912555666");
                editText10.setTextColor(Color.parseColor("#333333"));
                fVar3.m1005a(editText10);
                fVar3.m999b(R$string.okok, new DialogInterface$OnClickListenerC13573d(editText10));
                fVar3.show();
                return true;
            } else if (str.equals("develop_auto_login_number_verify")) {
                m3885v();
                m3884w();
                return true;
            } else if (str.equals("develop_delete_account")) {
                if (C14137r4.m2372f()) {
                    C14137r4.m2386a(this.f30475u);
                    return true;
                }
                C14687h.m861a(this.f30475u, "not registered user", 1).m858c();
                return true;
            } else if (str.equals("cd_popup_tutorial")) {
                DialogC14618f fVar4 = new DialogC14618f(getContext());
                EditText editText11 = new EditText(getContext());
                editText11.setRawInputType(8194);
                editText11.setTextColor(-16777216);
                editText11.setText(String.valueOf(C13915b3.m3065a("pref_debug_call_dialog_popup_threshold", 1500L)));
                fVar4.m1005a(editText11);
                fVar4.setTitle("Set CD Popup Threshold in ms");
                fVar4.m997b("Done", new DialogInterface$OnClickListenerC13574e(editText11));
                if (C13878a3.m3244a(fVar4)) {
                    return true;
                }
                C14687h.m861a(getContext(), "no draw over permission", 0).m858c();
                C13878a3.m3222c((Context) this.f30475u);
                return true;
            } else if (str.equals("daily_sync_gap")) {
                DialogC14618f fVar5 = new DialogC14618f(getContext());
                final EditText editText12 = new EditText(getContext());
                editText12.setRawInputType(8194);
                editText12.setTextColor(-16777216);
                editText12.setText(String.valueOf(C13915b3.m3065a("daily_sync_gap", (long) AdUtils.ONE_DAY) / 60000));
                fVar5.m1005a(editText12);
                fVar5.setTitle("Set daily sync gap in minutes (gap is at least 15 minutes long). Default is 1 day (1440 minutes)");
                fVar5.m997b("Done", new DialogInterface.OnClickListener() { // from class: j.a.s.e
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        DialogC13566w.this.m3916a(editText12, dialogInterface, i3);
                    }
                });
                if (C13878a3.m3244a(fVar5)) {
                    return true;
                }
                C14687h.m861a(getContext(), "no draw over permission", 0).m858c();
                C13878a3.m3222c((Context) this.f30475u);
                return true;
            } else if (str.equals("reset_daily_sync_work")) {
                DailySyncJobWorker.m27942a(MyApplication.m29013o());
                DailySyncJobWorker.m27937b(MyApplication.m29013o());
                C14687h.m861a(getContext(), "reset daily sync work", 0).m858c();
                return true;
            } else if (str.equals("block_failed_emulation")) {
                DialogC14618f fVar6 = new DialogC14618f(getContext());
                fVar6.m1003a("Enable emulation of block failed");
                fVar6.m1001a(C13915b3.m3062a("pref_debug_blocking_failed_emulation", false));
                fVar6.m997b("Done", new DialogInterface$OnClickListenerC13575f(fVar6));
                if (C13878a3.m3244a(fVar6)) {
                    return true;
                }
                C14687h.m861a(getContext(), "no draw over permission", 0).m858c();
                C13878a3.m3222c((Context) this.f30475u);
                return true;
            } else {
                if ("emergency_number_list".equals(str)) {
                    List<String> a2 = C6295d.m23362a(getContext()).m23363a();
                    DialogC14618f fVar7 = new DialogC14618f(getContext());
                    fVar7.m998b(a2 != null ? Joiner.m31135on("\n").join(a2) : "");
                    fVar7.m994c(Payload.RESPONSE_OK);
                    fVar7.show();
                    return true;
                } else if (TextUtils.equals(str, "app_restart")) {
                    C13565v.m3921g().m23331c();
                    return true;
                } else if (str.equalsIgnoreCase("sms_handle_storage")) {
                    DialogC14625g gVar = new DialogC14625g(getContext());
                    gVar.m971a(new String[]{"Set storage low", "Set storage ok"});
                    gVar.m974a(new DialogInterface$OnClickListenerC13576g(this));
                    gVar.show();
                    return true;
                } else if (str.equalsIgnoreCase("firebase_info_key")) {
                    C13599y.m3858a(getContext());
                    return true;
                } else if (str.equalsIgnoreCase("fcm_token")) {
                    String a3 = C6334a.m23211s().m23248a("pref_fcm_token", "");
                    ((ClipboardManager) getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("fcm token", a3));
                    if (TextUtils.isEmpty(a3)) {
                        return true;
                    }
                    C14687h.m861a(getContext(), "Success", 1).m858c();
                    return true;
                } else if (str.equalsIgnoreCase("sms_handle_storage")) {
                    DialogC14625g gVar2 = new DialogC14625g(getContext());
                    gVar2.m971a(new String[]{"Set storage low", "Set storage ok"});
                    gVar2.m974a(new DialogInterface$OnClickListenerC13577h(this));
                    gVar2.show();
                    return true;
                } else if (str.equalsIgnoreCase("get_ad_id")) {
                    final String a4 = C14000f2.m2905a();
                    new AlertDialog.Builder(this.f30475u).setTitle("Advertising Id").setMessage(a4).setNeutralButton("Copy AdId", new DialogInterface.OnClickListener() { // from class: j.a.s.f
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i3) {
                            DialogC13566w.this.m3912a(a4, dialogInterface, i3);
                        }
                    }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
                    return true;
                } else if (str.equalsIgnoreCase("third_party_url_scan_result")) {
                    AlertDialog.Builder builder5 = new AlertDialog.Builder(getContext());
                    EditText editText13 = new EditText(getContext());
                    int a5 = C14217x3.m2201a(15.0f);
                    int i3 = a5 * 2;
                    editText13.setPadding(a5, i3, a5, i3);
                    builder5.setView(editText13);
                    builder5.setPositiveButton(R$string.okok, new DialogInterface$OnClickListenerC13578i(editText13));
                    builder5.setNegativeButton(R$string.cancel, (DialogInterface.OnClickListener) null);
                    builder5.show();
                    return true;
                } else if (str.equalsIgnoreCase("show_ads_settings")) {
                    C13466r.m3999a(this.f30475u);
                    return true;
                } else if (str.startsWith("iap_")) {
                    m3910c(str, obj);
                    return true;
                } else if (str.equalsIgnoreCase("Schedule sms job")) {
                    C13582j jVar = new C13582j(this);
                    if (obj.equals("send a sms job")) {
                        C11898k.m7979a(C11885g.m7989a(new C13434f0(jVar)));
                        return true;
                    } else if (obj.equals("send 10 sms jobs")) {
                        C11885g.C11886a aVar = new C11885g.C11886a(new C13434f0(jVar));
                        for (int i4 = 0; i4 < 10; i4++) {
                            C11898k.m7979a(aVar.m7977a());
                        }
                        return true;
                    } else if (obj.equals("send a sms job every 2 seconds (10 jobs)")) {
                        new C13583k(this, jVar).start();
                        return true;
                    } else if (!obj.equals("send a batch sms job")) {
                        return true;
                    } else {
                        C11898k.m7979a(C11864c.m8023a(new C13430e0(jVar)));
                        return true;
                    }
                } else if (str.equalsIgnoreCase("single_ml_infer")) {
                    AlertDialog.Builder builder6 = new AlertDialog.Builder(getContext());
                    EditText editText14 = new EditText(getContext());
                    int a6 = C14217x3.m2201a(15.0f);
                    int i5 = a6 * 2;
                    editText14.setPadding(a6, i5, a6, i5);
                    builder6.setView(editText14);
                    builder6.setPositiveButton(R$string.okok, new DialogInterface$OnClickListenerC13584l(this, editText14));
                    builder6.setNegativeButton(R$string.cancel, (DialogInterface.OnClickListener) null);
                    builder6.show();
                    return true;
                } else {
                    str.equalsIgnoreCase("batch_infer_delay");
                    if (str.equalsIgnoreCase("single_url_scan")) {
                        C13438g0.m4041a(this.f30475u);
                        return true;
                    } else if (!str.equalsIgnoreCase("set_offline_db_outdated_debug")) {
                        return true;
                    } else {
                        C13419b0.m4059a(this.f30475u);
                        return true;
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public final void m3910c(String str, Object obj) {
        C13773d c = ((MyApplication) this.f30475u.getApplication()).m29026c();
        str.equalsIgnoreCase("iap_subscribed_status");
        if (str.equals("iap_ggp_get_plan")) {
            C13760c.m3488c().m3492a(Dispatchers.getMain());
        } else if (str.equals("iap_ggp_get_plan_and_sync_gp_sku")) {
            c.m3466c();
        } else if (str.equals("iap_ggp_get_user_products")) {
            C13760c.m3488c().m3490a(CoroutineScopeKt.MainScope(), (C13760c.AbstractC13762b) null, (AbstractC12402b<AbstractC12404c>) null);
        } else if (str.equals("iap_ggp_post_purchase_token")) {
            c.m3463d();
        } else if (str.equals("iap_lookup_plan_realm_db")) {
            List<IapPlanRealmObject> c2 = C13085e.m4637c();
            if (c2 != null && c2.size() > 0) {
                DialogC14618f fVar = new DialogC14618f(getContext());
                fVar.m998b(c2.get(0).toString());
                fVar.m992d(Payload.RESPONSE_OK);
                fVar.show();
            }
        } else if (str.equalsIgnoreCase("iap_reset_reported_users_promotion")) {
            List<IapProductRealmObject> a = C13092f.m4628a(C13193p.m4437a("productId"), C13193p.m4438a("ad_free_subscription_yearly_50off_reportuser"), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
            if (a != null && 1 == a.size()) {
                IapProductRealmObject iapProductRealmObject = a.get(0);
                iapProductRealmObject.setExpiredTime(-1L);
                C13092f.m4629a(iapProductRealmObject);
                C14687h.m861a(getContext(), "reset iap reported users promotion OK!", 0).m858c();
            }
        } else if (str.equalsIgnoreCase("iap_reset_show_open_app_promo_time")) {
            C13915b3.m3061a("show_iap_open_app_promo_page_time");
        } else if (str.equalsIgnoreCase("iap_reset_show_post_ced_promo_time")) {
            C13915b3.m3061a("show_iap_post_ced_promo_time");
        } else if (str.equalsIgnoreCase("iap_lookup_subscription_status_realm_db")) {
            SubscriptionStatusRealmObject d = C13096g.m4620d();
            if (d != null) {
                DialogC14618f fVar2 = new DialogC14618f(getContext());
                fVar2.m998b(d.toString());
                fVar2.m992d(Payload.RESPONSE_OK);
                fVar2.show();
            }
        } else if (str.equalsIgnoreCase("iap_set_subscription_status")) {
            C13976c.f31384a.m9459a("iap_subscription_status", (String) Integer.valueOf(Integer.parseInt(obj.toString())));
        }
    }

    @Override // p459j.p460a.p564s.AbstractDialogC13459p
    /* renamed from: e */
    public void mo3909e() {
        if (C14217x3.m2107z()) {
            Intent intent = new Intent(getContext(), MainActivity.class);
            intent.setFlags(335544320);
            getContext().startActivity(intent);
            dismiss();
            return;
        }
        this.f30475u.overridePendingTransition(0, 0);
        C14376j.m1452b(this.f30475u, true, false);
    }

    /* renamed from: f */
    public final void m3908f(String str) {
        m4027a("Ad configuration", str);
        m4026a("get_ad_id", "Get Ad Id", str);
        m4026a("show_ads_settings", "Show Ads Settings", str);
        m4027a("Ad source", str);
        m4020a("set_postcall_adn_test", "Set MoPub Testing Flag", C13466r.m3996c(), str);
        m4020a("set_adn_test_source", "Set AdN test source", C13466r.m4000a(), str);
        m4027a("MoPub SDK init", str);
        m4020a("set_mopub_sdk_init_test", "Set MoPub SDK init test", C13466r.m3997b(), str);
        m4013b(AdUtils.KEY_DEBUG_MOPUB_SDK_INIT_FAIL_FOR_ALL, "Fail init for all", str);
        m4013b(AdUtils.KEY_DEBUG_MOPUB_SDK_INIT_FAIL_APP_LAUNCH, "Fail init at app launch", str);
    }

    @Override // p459j.p460a.p564s.AbstractDialogC13459p
    /* renamed from: g */
    public void mo3907g() {
        if (this.f30474t) {
            m3902i("Init");
        }
        m3896l("System");
        m3906g("Data");
        m3898k("Push/Pull");
        m3900j("Others");
        m3904h("Iap");
        m3908f("Ad");
    }

    /* renamed from: g */
    public final void m3906g(String str) {
        m4027a("App Data", str);
        if (!C13915b3.m3059b("vas_first_scan")) {
            m4026a("develop_vas_db_preference", "Lookup Vas Database", str);
        }
        m4026a("develop_show_preference", "Show Preferences", str);
        m4026a("develop_clearcache_preference", "Clear All NumberInfo Cache", str);
        m4026a("firebase_info_key", "Firebase info", str);
        m4026a("fcm_token", "Copy FCM token", str);
        m4020a("show_expired_ab_key_toast", "show expired AB key toast", m3888s(), str);
        m4026a("abtesting_key", "Set AB testing value", str);
        m4026a("reset_abtesting_key", "Reset all ab test value", str);
        m4026a("random_value_key", "Set randomly selected value", str);
        m4026a("cd_popup_tutorial", "Set CD popup threshold for default phone tutorial", str);
        m4026a("daily_sync_gap", "Set daily sync gap", str);
        m4026a("reset_daily_sync_work", "Reset daily sync work", str);
        m4026a("block_failed_emulation", "Emulate the private blocking API failed", str);
        m4026a("emergency_number_list", "Show emergency number list", str);
        m4026a("generate_fake_sync_list", "Generate fake data", str);
        m4026a("customized_call_log_type", "Customized call log type", str);
        m4027a("Card & Number", str);
        m4026a("develop_number_verify", "debug number verify", str);
        m4026a("develop_whoscallversion", "build version", str);
        m4027a("others", str);
        C13190o.m4447a();
    }

    /* renamed from: h */
    public final ArrayList<Pair<String, Object>> m3905h() {
        ArrayList<Pair<String, Object>> arrayList = new ArrayList<>();
        arrayList.add(new Pair<>(AdsSettingsKt.KEY_ENABLE, 1));
        arrayList.add(new Pair<>("disable", 0));
        return arrayList;
    }

    /* renamed from: h */
    public final void m3904h(String str) {
        m4027a("Iap", str);
        m4020a("iap_subscribed_status", "Set subscribed status", m3888s(), str);
        m4026a("iap_ggp_get_plan", "GGP get plan api", str);
        m4026a("iap_ggp_get_plan_and_sync_gp_sku", "GGP get plan api and sync gp sku", str);
        m4026a("iap_ggp_get_user_products", "GGP get user products api (need register)", str);
        m4026a("iap_ggp_post_purchase_token", "GGP verify purchase token api (need register)", str);
        m4026a("iap_lookup_plan_realm_db", "Lookup plan realm db", str);
        m4026a("iap_lookup_subscription_status_realm_db", "Lookup subscription status realm db", str);
        m4026a("iap_reset_reported_users_promotion", "Reset IAP reported users promotion", str);
        m4026a("iap_reset_show_open_app_promo_time", "Reset show open app promo time", str);
        m4026a("iap_reset_show_post_ced_promo_time", "Reset show post ced promo time", str);
        m4020a("iap_set_subscription_status", "Set subscription status", m3886u(), str);
    }

    /* renamed from: i */
    public final String m3903i() {
        return "+886939" + new Random().nextInt(1000000);
    }

    /* renamed from: i */
    public final void m3902i(String str) {
        Object obj = PreferenceManager.getDefaultSharedPreferences(getContext()).getAll().get("develop_server_preference");
        String str2 = obj != null ? TextUtils.equals(obj.toString(), AdsSettingsKt.KEY_ENABLE) ? "Product Server" : TextUtils.equals(obj.toString(), "seed") ? "Seed Server" : "Staging Server" : null;
        m4027a("Initial settings", str);
        m4024a("develop_server_preference", "Server Settings", str2, m3889r(), str);
        m4026a("random_deviceid", "Random DeviceId", str);
        m4027a("Quick Login", str);
        m4026a("develop_auto_login", "Quick Login", str);
        m4026a("develop_quick_choose_account_login", "Quick Login Choose Account", str);
        m4026a("develop_auto_login_number_verify", "Quick Login + number verify", str);
        m4026a("develop_skip_login", "Skip login", str);
    }

    /* renamed from: j */
    public final ArrayList<Pair<String, Object>> m3901j() {
        ArrayList<Pair<String, Object>> arrayList = new ArrayList<>();
        arrayList.add(new Pair<>("default", "default"));
        arrayList.add(new Pair<>("timeout", "1"));
        arrayList.add(new Pair<>("SSLPeerUnverifiedException", "SSLPeerUnverifiedException"));
        arrayList.add(new Pair<>("EOFException", "EOFException"));
        arrayList.add(new Pair<>("503", "503"));
        arrayList.add(new Pair<>("500", "500"));
        arrayList.add(new Pair<>("404", "404"));
        arrayList.add(new Pair<>("401(Account has been deleted)", "401"));
        arrayList.add(new Pair<>("400", "400"));
        arrayList.add(new Pair<>("429", "429"));
        return arrayList;
    }

    /* renamed from: j */
    public final void m3900j(String str) {
        m4027a("Others", str);
        m4020a("develop_write_app_update_preference", "Set App update", m3899k(), str);
        m4021a("develop_api_return_preference", "Set API return code", m3901j(), str);
        m4026a("develop_get_crash", "Get Crash", str);
        m4021a("develop_gga_clienttime", "[GGA] save clientTime", m3882y(), str);
        m4026a("develop_log_viewer", "Show Event Viewer", str);
        m4026a("developer_popdialog", "Popup Rage Dialog", str);
        m4020a("token_expire", "Set Token expire", m3887t(), str);
        m4026a("show db update notification", "show db update notification", str);
        m4026a("Send CS log", "Send CS log", str);
        m4026a("Test handle sync result", "Test handle sync result", str);
        m4026a("sms_handle_storage", "Set SMS device storage", str);
        m4026a("third_party_url_scan_result", "3rd party url scan result", str);
        m4013b("enable_performance_logger", "Enable performance logger (commit when MainActivity onPostResume)", str);
        m4020a("Schedule sms job", "Schedule sms jobs", m3891p(), str);
        m4026a("single_ml_infer", "Single ML infer", str);
        m4020a("batch_infer_delay", "Set batch infer delay(3 min.)", m3888s(), str);
        m4026a("single_url_scan", "URL scan", str);
        m4026a("set_offline_db_outdated_debug", "Enable Offline DB outdated debug", str);
    }

    /* renamed from: k */
    public final void m3898k(String str) {
        m4027a("Pull & Push", str);
        m4026a("develop_push", "Push Test", str);
        m4021a("develop_push_product_preference", "Set Push Product", m3897l(), str);
        m4021a("develop_push_mode_preference", "Set Push Mode", m3895m(), str);
        m4021a("develop_push_versioncode_preference", "Set Push Version", m3893n(), str);
        m4026a("develop_sdkinfo_preference", "Show SDK Info", str);
        m4026a("develop_offlinedbsdkinfo_preference", "Show OfflineDb Info", str);
        m4021a("develop_sdkpv_preference", "Enable PV name", m3905h(), str);
        m4026a("develop_sdksegment_preference", "Update Segment", str);
        m4027a("Others", str);
        m4026a("reset_dau", "Reset Dau", str);
        m4026a("reset_viral", "Reset Viral", str);
        m4026a("show server config", "Show server config", str);
        m4026a("Test show flexible dialog", "Test flexible dialog", str);
    }

    /* renamed from: k */
    public final String[] m3899k() {
        return new String[]{"default", "force update", "suggested update"};
    }

    /* renamed from: l */
    public final ArrayList<Pair<String, Object>> m3897l() {
        ArrayList<Pair<String, Object>> arrayList = new ArrayList<>();
        arrayList.add(new Pair<>("whoscall", "release"));
        arrayList.add(new Pair<>("testEnvironment", "debug"));
        return arrayList;
    }

    /* renamed from: l */
    public final void m3896l(String str) {
        m4027a("Locale", str);
        List<String> a = C6311c.m23313a();
        String[] strArr = new String[a.size()];
        a.toArray(strArr);
        m4020a("develop_country_preference", "Country", strArr, str);
        m4027a("System", str);
        m4026a("develop_calllog", "Lookup Content Provider", str);
        m4026a("googleservice_simulation_key", C13405a0.m4074b(), str);
        m4020a("develop_is_roaming", "Set Roaming", m3892o(), str);
        m4020a("develop_isfullscreen_preference", "Set Fullscreen", m3890q(), str);
        m4026a("app_restart", "App Restart", str);
        m4026a("develop_delete_account", "delete account", str);
        m4026a("develop_cleardata_preference", "Clear Data", str);
    }

    /* renamed from: m */
    public final ArrayList<Pair<String, Object>> m3895m() {
        ArrayList<Pair<String, Object>> arrayList = new ArrayList<>();
        arrayList.add(new Pair<>(AdsSettingsKt.KEY_ENABLE, AdsSettingsKt.KEY_ENABLE));
        arrayList.add(new Pair<>("testing", "testing"));
        return arrayList;
    }

    /* renamed from: m */
    public final void m3894m(String str) {
        C14217x3.m2181a(new AsyncTaskC13587n(getContext(), true, R$string.commit_waiting, str));
    }

    /* renamed from: n */
    public final ArrayList<Pair<String, Object>> m3893n() {
        int q = C14017g4.m2807q();
        ArrayList<Pair<String, Object>> arrayList = new ArrayList<>();
        int i = q + 100;
        arrayList.add(new Pair<>(String.valueOf(i), Integer.valueOf(i)));
        int i2 = q + 10;
        arrayList.add(new Pair<>(String.valueOf(i2), Integer.valueOf(i2)));
        arrayList.add(new Pair<>(q + "(current)", Integer.valueOf(q)));
        int i3 = q - 10;
        arrayList.add(new Pair<>(String.valueOf(i3), Integer.valueOf(i3)));
        int i4 = q + (-100);
        arrayList.add(new Pair<>(String.valueOf(i4), Integer.valueOf(i4)));
        return arrayList;
    }

    /* renamed from: o */
    public final String[] m3892o() {
        return new String[]{"default", AdsSettingsKt.KEY_ENABLE, "disable"};
    }

    @Override // p459j.p460a.p564s.AbstractDialogC13459p, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m3920A();
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        CallStats.m28534h().m28536f();
    }

    /* renamed from: p */
    public final String[] m3891p() {
        return new String[]{"send a sms job", "send 10 sms jobs", "send a sms job every 2 seconds (10 jobs)", "send a batch sms job"};
    }

    /* renamed from: q */
    public final String[] m3890q() {
        return new String[]{"default", AdsSettingsKt.KEY_ENABLE, "disable"};
    }

    /* renamed from: r */
    public final ArrayList<Pair<String, Object>> m3889r() {
        ArrayList<Pair<String, Object>> arrayList = new ArrayList<>();
        arrayList.add(new Pair<>("Product Server", AdsSettingsKt.KEY_ENABLE));
        arrayList.add(new Pair<>("Seed Server", "seed"));
        arrayList.add(new Pair<>("Staging Server", "disable"));
        return arrayList;
    }

    /* renamed from: s */
    public final String[] m3888s() {
        return new String[]{AdsSettingsKt.KEY_ENABLE, "disable"};
    }

    /* renamed from: t */
    public final String[] m3887t() {
        return new String[]{"expire after 1 day", "expired"};
    }

    /* renamed from: u */
    public final String[] m3886u() {
        return new String[]{"0", "1", "2", "3", "4", "5", "6", "7", "8"};
    }

    /* renamed from: v */
    public final void m3885v() {
        Activity activity = this.f30475u;
        new C14409c(new C14416d(activity, activity)).mo1372a();
        C14092n3.m2583b("userNumber", "886223686999");
        C13915b3.m3055b("isRegisterOver", true);
    }

    /* renamed from: w */
    public final void m3884w() {
        C14174u.m2293k().postDelayed(new RunnableC13586m(), TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
    }

    /* renamed from: x */
    public final void m3883x() {
        C14031j.m2747a();
        C6357a.m23019b(String.valueOf(C14017g4.m2807q()), C14017g4.m2810n());
        C14687h.m861a(this.f30475u, "locked ab test group is now cleared", 1).m858c();
        C14031j.m2737c();
    }

    /* renamed from: y */
    public final ArrayList<Pair<String, Object>> m3882y() {
        ArrayList<Pair<String, Object>> arrayList = new ArrayList<>();
        long currentTimeMillis = System.currentTimeMillis();
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(currentTimeMillis);
        String str = (String) DateFormat.format("yyyy-MM-dd hh:mm:ss", instance.getTime());
        arrayList.add(new Pair<>("save current(" + str + ")", Long.valueOf(currentTimeMillis)));
        arrayList.add(new Pair<>("disable", 0));
        return arrayList;
    }

    /* renamed from: z */
    public final void m3881z() {
        if (!C13878a3.m3195w()) {
            ActivityCompat.requestPermissions(this.f30475u, new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 0);
            return;
        }
        try {
            this.f30475u.startActivityForResult(new Intent("android.intent.action.GET_CONTENT").setType("*/*"), 104);
        } catch (ActivityNotFoundException e) {
        }
    }
}
