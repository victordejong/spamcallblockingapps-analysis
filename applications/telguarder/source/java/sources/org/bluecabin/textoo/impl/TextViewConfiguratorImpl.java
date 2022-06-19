package org.bluecabin.textoo.impl;

import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.util.Linkify;
import android.widget.TextView;
import java.util.regex.Pattern;
import org.bluecabin.textoo.Configurator;
import org.bluecabin.textoo.LinksHandler;
import org.bluecabin.textoo.TextViewConfigurator;
import org.bluecabin.textoo.TextooContext;
import org.bluecabin.textoo.impl.ConfiguratorImpl;
import org.bluecabin.textoo.impl.LinksHandlingImpl;
import org.bluecabin.textoo.impl.TextLinkifyImpl;
import org.bluecabin.textoo.util.CharSequenceSupport$;
import org.bluecabin.textoo.util.CharSequenceSupport$ImplicitCharSequence$;
import scala.Function0;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.collection.immutable.Queue;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\u0005mf\u0001B\u0001\u0003\t-\u0011\u0001\u0004V3yiZKWm^\"p]\u001aLw-\u001e:bi>\u0014\u0018*\u001c9m\u0015\t\u0019A!\u0001\u0003j[Bd'BA\u0003\u0007\u0003\u0019!X\r\u001f;p_*\u0011q\u0001C\u0001\nE2,XmY1cS:T\u0011!C\u0001\u0004_J<7\u0001A\n\u0006\u00011\u0001Bd\b\t\u0003\u001b9i\u0011\u0001B\u0005\u0003\u001f\u0011\u0011A\u0003V3yiZKWm^\"p]\u001aLw-\u001e:bi>\u0014\b\u0003B\t\u0013)1i\u0011AA\u0005\u0003'\t\u0011\u0001cQ8oM&<WO]1u_JLU\u000e\u001d7\u0011\u0005UQR\"\u0001\f\u000b\u0005]A\u0012AB<jI\u001e,GOC\u0001\u001a\u0003\u001d\tg\u000e\u001a:pS\u0012L!a\u0007\f\u0003\u0011Q+\u0007\u0010\u001e,jK^\u0004B!E\u000f\u0015\u0019%\u0011aD\u0001\u0002\u0010)\u0016DH\u000fT5oW&4\u00170S7qYB!\u0011\u0003\t\u000b\r\u0013\t\t#AA\tMS:\\7\u000fS1oI2LgnZ%na2D\u0001b\t\u0001\u0003\u0006\u0004%\t\u0006J\u0001\nS:LGo\u0015;bi\u0016,\u0012!\n\t\u0004M%\"R\"A\u0014\u000b\u0003!\nQa]2bY\u0006L!AK\u0014\u0003\u0013\u0019+hn\u0019;j_:\u0004\u0004\u0002\u0003\u0017\u0001\u0005\u0003\u0005\u000b\u0011B\u0013\u0002\u0015%t\u0017\u000e^*uCR,\u0007\u0005\u0003\u0005/\u0001\t\u0015\r\u0011\"\u00150\u0003\u001d\u0019\u0007.\u00198hKN,\u0012\u0001\r\t\u0004c}\"bB\u0001\u001a>\u001d\t\u0019DH\u0004\u00025w9\u0011QG\u000f\b\u0003mej\u0011a\u000e\u0006\u0003q)\ta\u0001\u0010:p_Rt\u0014\"A\u0005\n\u0005\u001dA\u0011BA\u0003\u0007\u0013\t\u0019A!\u0003\u0002?\u0005\u000511\t[1oO\u0016L!\u0001Q!\u0003\u0017\rC\u0017M\\4f#V,W/\u001a\u0006\u0003}\tA\u0001b\u0011\u0001\u0003\u0002\u0003\u0006I\u0001M\u0001\tG\"\fgnZ3tA!AQ\t\u0001BC\u0002\u0013Ec)\u0001\u0005iC:$G.\u001a:t+\u00059\u0005c\u0001%N\u001f6\t\u0011J\u0003\u0002K\u0017\u0006I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u0019\u001e\n!bY8mY\u0016\u001cG/[8o\u0013\tq\u0015JA\u0003Rk\u0016,X\r\u0005\u0002\u000e!&\u0011\u0011\u000b\u0002\u0002\r\u0019&t7n\u001d%b]\u0012dWM\u001d\u0005\t'\u0002\u0011\t\u0011)A\u0005\u000f\u0006I\u0001.\u00198eY\u0016\u00148\u000f\t\u0005\t+\u0002\u0011)\u0019!C*-\u0006iA/\u001a=u_>\u001cuN\u001c;fqR,\u0012a\u0016\t\u0003\u001baK!!\u0017\u0003\u0003\u001bQ+\u0007\u0010^8p\u0007>tG/\u001a=u\u0011!Y\u0006A!A!\u0002\u00139\u0016A\u0004;fqR|wnQ8oi\u0016DH\u000f\t\u0005\u0006;\u0002!IAX\u0001\u0007y%t\u0017\u000e\u001e \u0015\t}\u00137\r\u001a\u000b\u0003A\u0006\u0004\"!\u0005\u0001\t\u000bUc\u00069A,\t\u000b\rb\u0006\u0019A\u0013\t\u000b9b\u0006\u0019\u0001\u0019\t\u000b\u0015c\u0006\u0019A$\t\u000b\u0019\u0004A\u0011K4\u0002\u001dU\u0004H-\u0019;f\u0011\u0006tG\r\\3sgR\u0011A\u0002\u001b\u0005\u0006S\u0016\u0004\raR\u0001\f]\u0016<\b*\u00198eY\u0016\u00148\u000fC\u0003l\u0001\u0011EC.A\u0007va\u0012\fG/Z\"iC:<Wm\u001d\u000b\u0003\u00195DQA\u001c6A\u0002A\n!B\\3x\u0007\"\fgnZ3t\u0011\u0015\u0001\b\u0001\"\u0015r\u0003-a\u0017N\\6jMf$V\r\u001f;\u0015\u0007Q\u0011H\u000fC\u0003t_\u0002\u0007A#\u0001\u0003uKb$\b\"B;p\u0001\u00041\u0018\u0001B7bg.\u0004\"AJ<\n\u0005a<#aA%oi\")\u0001\u000f\u0001C)uR)Ac\u001f?\u0002\u0012!)1/\u001fa\u0001)!)Q0\u001fa\u0001}\u00069\u0001/\u0019;uKJt\u0007cA@\u0002\u000e5\u0011\u0011\u0011\u0001\u0006\u0005\u0003\u0007\t)!A\u0003sK\u001e,\u0007P\u0003\u0003\u0002\b\u0005%\u0011\u0001B;uS2T!!a\u0003\u0002\t)\fg/Y\u0005\u0005\u0003\u001f\t\tAA\u0004QCR$XM\u001d8\t\u000f\u0005M\u0011\u00101\u0001\u0002\u0016\u000511o\u00195f[\u0016\u0004B!a\u0006\u0002\u001e9\u0019a%!\u0007\n\u0007\u0005mq%\u0001\u0004Qe\u0016$WMZ\u0005\u0005\u0003?\t\tC\u0001\u0004TiJLgn\u001a\u0006\u0004\u000379\u0003B\u00029\u0001\t#\n)\u0003F\u0006\u0015\u0003O\tI#a\u000b\u0002.\u0005=\u0003BB:\u0002$\u0001\u0007A\u0003\u0003\u0004~\u0003G\u0001\rA \u0005\t\u0003'\t\u0019\u00031\u0001\u0002\u0016!A\u0011qFA\u0012\u0001\u0004\t\t$A\u0006nCR\u001c\u0007NR5mi\u0016\u0014\b\u0003BA\u001a\u0003\u0013rA!!\u000e\u0002D9!\u0011qGA \u001d\u0011\tI$!\u0010\u000f\u0007Y\nY$C\u0001\u001a\u0013\t\u0019\b$\u0003\u0003\u0002\b\u0005\u0005#BA:\u0019\u0013\u0011\t)%a\u0012\u0002\u000f1Kgn[5gs*!\u0011qAA!\u0013\u0011\tY%!\u0014\u0003\u00175\u000bGo\u00195GS2$XM\u001d\u0006\u0005\u0003\u000b\n9\u0005\u0003\u0005\u0002R\u0005\r\u0002\u0019AA*\u0003=!(/\u00198tM>\u0014XNR5mi\u0016\u0014\b\u0003BA\u001a\u0003+JA!a\u0016\u0002N\tyAK]1og\u001a|'/\u001c$jYR,'\u000fC\u0004\u0002\\\u0001!\t&!\u0018\u0002)\u001d,Go\u00159b]:,GM\u0012:p[J+7/\u001e7u)\u0011\ty&!\u001c\u0011\u000b\u0019\n\t'!\u001a\n\u0007\u0005\rtE\u0001\u0004PaRLwN\u001c\t\u0005\u0003O\nI'\u0004\u0002\u0002B%!\u00111NA!\u0005\u001d\u0019\u0006/\u00198oK\u0012Daa]A-\u0001\u0004!\u0002bBA9\u0001\u0011E\u00131O\u0001\u0013g\u0016$8\u000b]1o]\u0016$Gk\u001c*fgVdG\u000fF\u0003\u0015\u0003k\nI\b\u0003\u0005\u0002x\u0005=\u0004\u0019AA3\u0003\u001d\u0019\b/\u00198oK\u0012Daa]A8\u0001\u0004!\u0002bBA?\u0001\u0011E\u0013qP\u0001\u000bO\u0016$8\u000b]1o]\u0016$G\u0003BA3\u0003\u0003Caa]A>\u0001\u0004!\u0002bBAC\u0001\u0011E\u0013qQ\u0001\u000bg\u0016$8\u000b]1o]\u0016$G#\u0002\u000b\u0002\n\u0006-\u0005BB:\u0002\u0004\u0002\u0007A\u0003\u0003\u0005\u0002x\u0005\r\u0005\u0019AA3\u0011\u001d\ty\t\u0001C)\u0003#\u000b\u0001\u0002^8SKN,H\u000e\u001e\u000b\u0004)\u0005M\u0005BB:\u0002\u000e\u0002\u0007AcB\u0004\u0002\u0018\nAI!!'\u00021Q+\u0007\u0010\u001e,jK^\u001cuN\u001c4jOV\u0014\u0018\r^8s\u00136\u0004H\u000eE\u0002\u0012\u000373a!\u0001\u0002\t\n\u0005u5\u0003BAN\u0003?\u00032AJAQ\u0013\r\t\u0019k\n\u0002\u0007\u0003:L(+\u001a4\t\u000fu\u000bY\n\"\u0001\u0002(R\u0011\u0011\u0011\u0014\u0005\t\u0003W\u000bY\n\"\u0001\u0002.\u000611M]3bi\u0016$R\u0001DAX\u0003gCq!!-\u0002*\u0002\u0007q+A\u0004d_:$X\r\u001f;\t\u000f\u0005U\u0016\u0011\u0016a\u0001)\u0005!a/[3x\u000b\u0019\tI,a'\u0005\u000f\na\u0001*\u00198eY\u0016\u0014\u0018+^3vK\u0002")
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextViewConfiguratorImpl.class */
public class TextViewConfiguratorImpl extends TextViewConfigurator implements TextLinkifyImpl<TextView, TextViewConfigurator>, LinksHandlingImpl<TextView, TextViewConfigurator> {
    private final Queue<Change<TextView>> changes;
    private final Queue<LinksHandler> handlers;
    private final Function0<TextView> initState;
    private volatile TextLinkifyImpl$AutoLink$ org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module;
    private final TextooContext textooContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextViewConfiguratorImpl(Function0<TextView> function0, Queue<Change<TextView>> queue, Queue<LinksHandler> queue2, TextooContext textooContext) {
        super(textooContext);
        this.initState = function0;
        this.changes = queue;
        this.handlers = queue2;
        this.textooContext = textooContext;
        ConfiguratorImpl.Cclass.$init$(this);
        TextLinkifyImpl.Cclass.$init$(this);
        LinksHandlingImpl.Cclass.$init$(this);
    }

    public static TextViewConfigurator create(TextooContext textooContext, TextView textView) {
        return TextViewConfiguratorImpl$.MODULE$.create(textooContext, textView);
    }

    private TextLinkifyImpl$AutoLink$ org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$lzycompute() {
        synchronized (this) {
            if (this.org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module == null) {
                this.org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module = new TextLinkifyImpl$AutoLink$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module;
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public final Configurator addChange(Change change) {
        return ConfiguratorImpl.Cclass.addChange(this, change);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.Configurator, org.bluecabin.textoo.TextViewConfigurator] */
    @Override // org.bluecabin.textoo.TextViewConfigurator, org.bluecabin.textoo.LinksHandling
    public final TextViewConfigurator addLinksHandler(LinksHandler linksHandler) {
        return LinksHandlingImpl.Cclass.addLinksHandler(this, linksHandler);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.widget.TextView, java.lang.Object] */
    @Override // org.bluecabin.textoo.TextViewConfigurator, org.bluecabin.textoo.Configurator
    public final TextView apply() {
        return ConfiguratorImpl.Cclass.apply(this);
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public Queue<Change<TextView>> changes() {
        return this.changes;
    }

    public Spanned getSpanned(TextView textView) {
        return CharSequenceSupport$ImplicitCharSequence$.MODULE$.toSpanned$extension(CharSequenceSupport$.MODULE$.ImplicitCharSequence(textView.getText()));
    }

    public Option<Spanned> getSpannedFromResult(TextView textView) {
        CharSequence text = textView.getText();
        return text instanceof Spanned ? new Some((Spanned) text) : None$.MODULE$;
    }

    @Override // org.bluecabin.textoo.impl.LinksHandlingImpl
    public Queue<LinksHandler> handlers() {
        return this.handlers;
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public final TextooContext implicitTextooContext() {
        return ConfiguratorImpl.Cclass.implicitTextooContext(this);
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public Function0<TextView> initState() {
        return this.initState;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.Configurator, org.bluecabin.textoo.TextViewConfigurator] */
    @Override // org.bluecabin.textoo.TextViewConfigurator, org.bluecabin.textoo.TextLinkify
    public final TextViewConfigurator linkify(Pattern pattern, String str) {
        return TextLinkifyImpl.Cclass.linkify(this, pattern, str);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.Configurator, org.bluecabin.textoo.TextViewConfigurator] */
    @Override // org.bluecabin.textoo.TextViewConfigurator, org.bluecabin.textoo.TextLinkify
    public final TextViewConfigurator linkify(Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        return TextLinkifyImpl.Cclass.linkify(this, pattern, str, matchFilter, transformFilter);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.Configurator, org.bluecabin.textoo.TextViewConfigurator] */
    @Override // org.bluecabin.textoo.TextViewConfigurator, org.bluecabin.textoo.TextLinkify
    public final TextViewConfigurator linkifyAll() {
        return TextLinkifyImpl.Cclass.linkifyAll(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.Configurator, org.bluecabin.textoo.TextViewConfigurator] */
    @Override // org.bluecabin.textoo.TextViewConfigurator, org.bluecabin.textoo.TextLinkify
    public final TextViewConfigurator linkifyEmailAddresses() {
        return TextLinkifyImpl.Cclass.linkifyEmailAddresses(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.Configurator, org.bluecabin.textoo.TextViewConfigurator] */
    @Override // org.bluecabin.textoo.TextViewConfigurator, org.bluecabin.textoo.TextLinkify
    public final TextViewConfigurator linkifyMapAddresses() {
        return TextLinkifyImpl.Cclass.linkifyMapAddresses(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.Configurator, org.bluecabin.textoo.TextViewConfigurator] */
    @Override // org.bluecabin.textoo.TextViewConfigurator, org.bluecabin.textoo.TextLinkify
    public final TextViewConfigurator linkifyPhoneNumbers() {
        return TextLinkifyImpl.Cclass.linkifyPhoneNumbers(this);
    }

    public TextView linkifyText(TextView textView, int i) {
        Linkify.addLinks(textView, i);
        return textView;
    }

    public TextView linkifyText(TextView textView, Pattern pattern, String str) {
        Linkify.addLinks(textView, pattern, str);
        return textView;
    }

    public TextView linkifyText(TextView textView, Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        Linkify.addLinks(textView, pattern, str, matchFilter, transformFilter);
        return textView;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.Configurator, org.bluecabin.textoo.TextViewConfigurator] */
    @Override // org.bluecabin.textoo.TextViewConfigurator, org.bluecabin.textoo.TextLinkify
    public final TextViewConfigurator linkifyWebUrls() {
        return TextLinkifyImpl.Cclass.linkifyWebUrls(this);
    }

    @Override // org.bluecabin.textoo.impl.LinksHandlingImpl
    public /* synthetic */ Object org$bluecabin$textoo$impl$LinksHandlingImpl$$super$toResult(Object obj) {
        return ConfiguratorImpl.Cclass.toResult(this, obj);
    }

    @Override // org.bluecabin.textoo.impl.TextLinkifyImpl
    public final TextLinkifyImpl$AutoLink$ org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink() {
        return this.org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module == null ? org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$lzycompute() : this.org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module;
    }

    public TextView setSpanned(TextView textView, Spanned spanned) {
        textView.setText(spanned);
        return textView;
    }

    public TextView setSpannedToResult(Spanned spanned, TextView textView) {
        textView.setText(spanned);
        return textView;
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public TextooContext textooContext() {
        return this.textooContext;
    }

    public TextView toResult(TextView textView) {
        TextView textView2 = (TextView) LinksHandlingImpl.Cclass.toResult(this, textView);
        CharSequence text = textView2.getText();
        if (text instanceof Spanned) {
            Spanned spanned = (Spanned) text;
            if (((ClickableSpan[]) spanned.getSpans(0, spanned.length(), ClickableSpan.class)).length > 0) {
                textView2.setMovementMethod(LinkMovementMethod.getInstance());
            }
        }
        return textView2;
    }

    @Override // org.bluecabin.textoo.impl.ConfiguratorImpl
    public TextViewConfigurator updateChanges(Queue<Change<TextView>> queue) {
        return new TextViewConfiguratorImpl(initState(), queue, handlers(), textooContext());
    }

    @Override // org.bluecabin.textoo.impl.LinksHandlingImpl
    public TextViewConfigurator updateHandlers(Queue<LinksHandler> queue) {
        return new TextViewConfiguratorImpl(initState(), changes(), queue, textooContext());
    }
}
