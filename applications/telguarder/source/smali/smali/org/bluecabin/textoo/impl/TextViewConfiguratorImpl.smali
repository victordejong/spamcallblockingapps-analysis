.class public Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;
.super Lorg/bluecabin/textoo/TextViewConfigurator;
.source "TextViewConfiguratorImpl.scala"

# interfaces
.implements Lorg/bluecabin/textoo/impl/TextLinkifyImpl;
.implements Lorg/bluecabin/textoo/impl/LinksHandlingImpl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bluecabin/textoo/TextViewConfigurator;",
        "Lorg/bluecabin/textoo/impl/TextLinkifyImpl<",
        "Landroid/widget/TextView;",
        "Lorg/bluecabin/textoo/TextViewConfigurator;",
        ">;",
        "Lorg/bluecabin/textoo/impl/LinksHandlingImpl<",
        "Landroid/widget/TextView;",
        "Lorg/bluecabin/textoo/TextViewConfigurator;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005mf\u0001B\u0001\u0003\t-\u0011\u0001\u0004V3yiZKWm^\"p]\u001aLw-\u001e:bi>\u0014\u0018*\u001c9m\u0015\t\u0019A!\u0001\u0003j[Bd\'BA\u0003\u0007\u0003\u0019!X\r\u001f;p_*\u0011q\u0001C\u0001\nE2,XmY1cS:T\u0011!C\u0001\u0004_J<7\u0001A\n\u0006\u00011\u0001Bd\u0008\t\u0003\u001b9i\u0011\u0001B\u0005\u0003\u001f\u0011\u0011A\u0003V3yiZKWm^\"p]\u001aLw-\u001e:bi>\u0014\u0008\u0003B\t\u0013)1i\u0011AA\u0005\u0003\'\t\u0011\u0001cQ8oM&<WO]1u_JLU\u000e\u001d7\u0011\u0005UQR\"\u0001\u000c\u000b\u0005]A\u0012AB<jI\u001e,GOC\u0001\u001a\u0003\u001d\tg\u000e\u001a:pS\u0012L!a\u0007\u000c\u0003\u0011Q+\u0007\u0010\u001e,jK^\u0004B!E\u000f\u0015\u0019%\u0011aD\u0001\u0002\u0010)\u0016DH\u000fT5oW&4\u00170S7qYB!\u0011\u0003\t\u000b\r\u0013\t\t#AA\tMS:\\7\u000fS1oI2LgnZ%na2D\u0001b\t\u0001\u0003\u0006\u0004%\t\u0006J\u0001\nS:LGo\u0015;bi\u0016,\u0012!\n\t\u0004M%\"R\"A\u0014\u000b\u0003!\nQa]2bY\u0006L!AK\u0014\u0003\u0013\u0019+hn\u0019;j_:\u0004\u0004\u0002\u0003\u0017\u0001\u0005\u0003\u0005\u000b\u0011B\u0013\u0002\u0015%t\u0017\u000e^*uCR,\u0007\u0005\u0003\u0005/\u0001\t\u0015\r\u0011\"\u00150\u0003\u001d\u0019\u0007.\u00198hKN,\u0012\u0001\r\t\u0004c}\"bB\u0001\u001a>\u001d\t\u0019DH\u0004\u00025w9\u0011QG\u000f\u0008\u0003mej\u0011a\u000e\u0006\u0003q)\ta\u0001\u0010:p_Rt\u0014\"A\u0005\n\u0005\u001dA\u0011BA\u0003\u0007\u0013\t\u0019A!\u0003\u0002?\u0005\u000511\t[1oO\u0016L!\u0001Q!\u0003\u0017\rC\u0017M\\4f#V,W/\u001a\u0006\u0003}\tA\u0001b\u0011\u0001\u0003\u0002\u0003\u0006I\u0001M\u0001\tG\"\u000cgnZ3tA!AQ\t\u0001BC\u0002\u0013Ec)\u0001\u0005iC:$G.\u001a:t+\u00059\u0005c\u0001%N\u001f6\t\u0011J\u0003\u0002K\u0017\u0006I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u0019\u001e\n!bY8mY\u0016\u001cG/[8o\u0013\tq\u0015JA\u0003Rk\u0016,X\r\u0005\u0002\u000e!&\u0011\u0011\u000b\u0002\u0002\r\u0019&t7n\u001d%b]\u0012dWM\u001d\u0005\t\'\u0002\u0011\t\u0011)A\u0005\u000f\u0006I\u0001.\u00198eY\u0016\u00148\u000f\t\u0005\t+\u0002\u0011)\u0019!C*-\u0006iA/\u001a=u_>\u001cuN\u001c;fqR,\u0012a\u0016\t\u0003\u001baK!!\u0017\u0003\u0003\u001bQ+\u0007\u0010^8p\u0007>tG/\u001a=u\u0011!Y\u0006A!A!\u0002\u00139\u0016A\u0004;fqR|wnQ8oi\u0016DH\u000f\t\u0005\u0006;\u0002!IAX\u0001\u0007y%t\u0017\u000e\u001e \u0015\t}\u00137\r\u001a\u000b\u0003A\u0006\u0004\"!\u0005\u0001\t\u000bUc\u00069A,\t\u000b\rb\u0006\u0019A\u0013\t\u000b9b\u0006\u0019\u0001\u0019\t\u000b\u0015c\u0006\u0019A$\t\u000b\u0019\u0004A\u0011K4\u0002\u001dU\u0004H-\u0019;f\u0011\u0006tG\r\\3sgR\u0011A\u0002\u001b\u0005\u0006S\u0016\u0004\raR\u0001\u000c]\u0016<\u0008*\u00198eY\u0016\u00148\u000fC\u0003l\u0001\u0011EC.A\u0007va\u0012\u000cG/Z\"iC:<Wm\u001d\u000b\u0003\u00195DQA\u001c6A\u0002A\n!B\\3x\u0007\"\u000cgnZ3t\u0011\u0015\u0001\u0008\u0001\"\u0015r\u0003-a\u0017N\\6jMf$V\r\u001f;\u0015\u0007Q\u0011H\u000fC\u0003t_\u0002\u0007A#\u0001\u0003uKb$\u0008\"B;p\u0001\u00041\u0018\u0001B7bg.\u0004\"AJ<\n\u0005a<#aA%oi\")\u0001\u000f\u0001C)uR)Ac\u001f?\u0002\u0012!)1/\u001fa\u0001)!)Q0\u001fa\u0001}\u00069\u0001/\u0019;uKJt\u0007cA@\u0002\u000e5\u0011\u0011\u0011\u0001\u0006\u0005\u0003\u0007\t)!A\u0003sK\u001e,\u0007P\u0003\u0003\u0002\u0008\u0005%\u0011\u0001B;uS2T!!a\u0003\u0002\t)\u000cg/Y\u0005\u0005\u0003\u001f\t\tAA\u0004QCR$XM\u001d8\t\u000f\u0005M\u0011\u00101\u0001\u0002\u0016\u000511o\u00195f[\u0016\u0004B!a\u0006\u0002\u001e9\u0019a%!\u0007\n\u0007\u0005mq%\u0001\u0004Qe\u0016$WMZ\u0005\u0005\u0003?\t\tC\u0001\u0004TiJLgn\u001a\u0006\u0004\u000379\u0003B\u00029\u0001\t#\n)\u0003F\u0006\u0015\u0003O\tI#a\u000b\u0002.\u0005=\u0003BB:\u0002$\u0001\u0007A\u0003\u0003\u0004~\u0003G\u0001\rA \u0005\t\u0003\'\t\u0019\u00031\u0001\u0002\u0016!A\u0011qFA\u0012\u0001\u0004\t\t$A\u0006nCR\u001c\u0007NR5mi\u0016\u0014\u0008\u0003BA\u001a\u0003\u0013rA!!\u000e\u0002D9!\u0011qGA \u001d\u0011\tI$!\u0010\u000f\u0007Y\nY$C\u0001\u001a\u0013\t\u0019\u0008$\u0003\u0003\u0002\u0008\u0005\u0005#BA:\u0019\u0013\u0011\t)%a\u0012\u0002\u000f1Kgn[5gs*!\u0011qAA!\u0013\u0011\tY%!\u0014\u0003\u00175\u000bGo\u00195GS2$XM\u001d\u0006\u0005\u0003\u000b\n9\u0005\u0003\u0005\u0002R\u0005\r\u0002\u0019AA*\u0003=!(/\u00198tM>\u0014XNR5mi\u0016\u0014\u0008\u0003BA\u001a\u0003+JA!a\u0016\u0002N\tyAK]1og\u001a|\'/\u001c$jYR,\'\u000fC\u0004\u0002\\\u0001!\t&!\u0018\u0002)\u001d,Go\u00159b]:,GM\u0012:p[J+7/\u001e7u)\u0011\ty&!\u001c\u0011\u000b\u0019\n\t\'!\u001a\n\u0007\u0005\rtE\u0001\u0004PaRLwN\u001c\t\u0005\u0003O\nI\'\u0004\u0002\u0002B%!\u00111NA!\u0005\u001d\u0019\u0006/\u00198oK\u0012Daa]A-\u0001\u0004!\u0002bBA9\u0001\u0011E\u00131O\u0001\u0013g\u0016$8\u000b]1o]\u0016$Gk\u001c*fgVdG\u000fF\u0003\u0015\u0003k\nI\u0008\u0003\u0005\u0002x\u0005=\u0004\u0019AA3\u0003\u001d\u0019\u0008/\u00198oK\u0012Daa]A8\u0001\u0004!\u0002bBA?\u0001\u0011E\u0013qP\u0001\u000bO\u0016$8\u000b]1o]\u0016$G\u0003BA3\u0003\u0003Caa]A>\u0001\u0004!\u0002bBAC\u0001\u0011E\u0013qQ\u0001\u000bg\u0016$8\u000b]1o]\u0016$G#\u0002\u000b\u0002\n\u0006-\u0005BB:\u0002\u0004\u0002\u0007A\u0003\u0003\u0005\u0002x\u0005\r\u0005\u0019AA3\u0011\u001d\ty\t\u0001C)\u0003#\u000b\u0001\u0002^8SKN,H\u000e\u001e\u000b\u0004)\u0005M\u0005BB:\u0002\u000e\u0002\u0007AcB\u0004\u0002\u0018\nAI!!\'\u00021Q+\u0007\u0010\u001e,jK^\u001cuN\u001c4jOV\u0014\u0018\r^8s\u00136\u0004H\u000eE\u0002\u0012\u000373a!\u0001\u0002\t\n\u0005u5\u0003BAN\u0003?\u00032AJAQ\u0013\r\t\u0019k\n\u0002\u0007\u0003:L(+\u001a4\t\u000fu\u000bY\n\"\u0001\u0002(R\u0011\u0011\u0011\u0014\u0005\t\u0003W\u000bY\n\"\u0001\u0002.\u000611M]3bi\u0016$R\u0001DAX\u0003gCq!!-\u0002*\u0002\u0007q+A\u0004d_:$X\r\u001f;\t\u000f\u0005U\u0016\u0011\u0016a\u0001)\u0005!a/[3x\u000b\u0019\tI,a\'\u0005\u000f\na\u0001*\u00198eY\u0016\u0014\u0018+^3vK\u0002"
.end annotation


# instance fields
.field private final changes:Lscala/collection/immutable/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final handlers:Lscala/collection/immutable/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/LinksHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final initState:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private volatile org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;"
        }
    .end annotation
.end field

.field private final textooContext:Lorg/bluecabin/textoo/TextooContext;


# direct methods
.method public constructor <init>(Lscala/Function0;Lscala/collection/immutable/Queue;Lscala/collection/immutable/Queue;Lorg/bluecabin/textoo/TextooContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Landroid/widget/TextView;",
            ">;",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "Landroid/widget/TextView;",
            ">;>;",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/LinksHandler;",
            ">;",
            "Lorg/bluecabin/textoo/TextooContext;",
            ")V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->initState:Lscala/Function0;

    .line 21
    iput-object p2, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->changes:Lscala/collection/immutable/Queue;

    .line 22
    iput-object p3, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->handlers:Lscala/collection/immutable/Queue;

    .line 23
    iput-object p4, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->textooContext:Lorg/bluecabin/textoo/TextooContext;

    .line 24
    invoke-direct {p0, p4}, Lorg/bluecabin/textoo/TextViewConfigurator;-><init>(Lorg/bluecabin/textoo/TextooContext;)V

    invoke-static {p0}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl$class;->$init$(Lorg/bluecabin/textoo/impl/ConfiguratorImpl;)V

    invoke-static {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->$init$(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)V

    invoke-static {p0}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$class;->$init$(Lorg/bluecabin/textoo/impl/LinksHandlingImpl;)V

    return-void
.end method

.method public static create(Lorg/bluecabin/textoo/TextooContext;Landroid/widget/TextView;)Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 1

    sget-object v0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$;->MODULE$:Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$;

    invoke-virtual {v0, p0, p1}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$;->create(Lorg/bluecabin/textoo/TextooContext;Landroid/widget/TextView;)Lorg/bluecabin/textoo/TextViewConfigurator;

    move-result-object p0

    return-object p0
.end method

.method private org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$lzycompute()Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;"
        }
    .end annotation

    .line 20
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;

    invoke-direct {v0, p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)V

    iput-object v0, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final addChange(Lorg/bluecabin/textoo/impl/Change;)Lorg/bluecabin/textoo/Configurator;
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl$class;->addChange(Lorg/bluecabin/textoo/impl/ConfiguratorImpl;Lorg/bluecabin/textoo/impl/Change;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p1

    return-object p1
.end method

.method public final addLinksHandler(Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/Configurator;
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$class;->addLinksHandler(Lorg/bluecabin/textoo/impl/LinksHandlingImpl;Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addLinksHandler(Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/LinksHandling;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->addLinksHandler(Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p1

    check-cast p1, Lorg/bluecabin/textoo/LinksHandling;

    return-object p1
.end method

.method public final bridge synthetic addLinksHandler(Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->addLinksHandler(Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p1

    check-cast p1, Lorg/bluecabin/textoo/TextViewConfigurator;

    return-object p1
.end method

.method public final bridge synthetic apply()Landroid/widget/TextView;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final apply()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl$class;->apply(Lorg/bluecabin/textoo/impl/ConfiguratorImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public changes()Lscala/collection/immutable/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->changes:Lscala/collection/immutable/Queue;

    return-object v0
.end method

.method public getSpanned(Landroid/widget/TextView;)Landroid/text/Spanned;
    .locals 2

    sget-object v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    .line 62
    sget-object v1, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->ImplicitCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->toSpanned$extension(Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSpanned(Ljava/lang/Object;)Landroid/text/Spanned;
    .locals 0

    .line 20
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->getSpanned(Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method public getSpannedFromResult(Landroid/widget/TextView;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Lscala/Option<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 53
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/text/Spanned;

    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getSpannedFromResult(Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 20
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->getSpannedFromResult(Landroid/widget/TextView;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public handlers()Lscala/collection/immutable/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/LinksHandler;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->handlers:Lscala/collection/immutable/Queue;

    return-object v0
.end method

.method public final implicitTextooContext()Lorg/bluecabin/textoo/TextooContext;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl$class;->implicitTextooContext(Lorg/bluecabin/textoo/impl/ConfiguratorImpl;)Lorg/bluecabin/textoo/TextooContext;

    move-result-object v0

    return-object v0
.end method

.method public initState()Lscala/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function0<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->initState:Lscala/Function0;

    return-object v0
.end method

.method public final linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/Configurator;
    .locals 0

    .line 20
    invoke-static {p0, p1, p2}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->linkify(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p1

    return-object p1
.end method

.method public final linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/Configurator;
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->linkify(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/TextLinkify;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p1

    check-cast p1, Lorg/bluecabin/textoo/TextLinkify;

    return-object p1
.end method

.method public final bridge synthetic linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/TextLinkify;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p1

    check-cast p1, Lorg/bluecabin/textoo/TextLinkify;

    return-object p1
.end method

.method public final bridge synthetic linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p1

    check-cast p1, Lorg/bluecabin/textoo/TextViewConfigurator;

    return-object p1
.end method

.method public final bridge synthetic linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p1

    check-cast p1, Lorg/bluecabin/textoo/TextViewConfigurator;

    return-object p1
.end method

.method public final linkifyAll()Lorg/bluecabin/textoo/Configurator;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->linkifyAll(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic linkifyAll()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyAll()Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    check-cast v0, Lorg/bluecabin/textoo/TextLinkify;

    return-object v0
.end method

.method public final bridge synthetic linkifyAll()Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyAll()Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    check-cast v0, Lorg/bluecabin/textoo/TextViewConfigurator;

    return-object v0
.end method

.method public final linkifyEmailAddresses()Lorg/bluecabin/textoo/Configurator;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->linkifyEmailAddresses(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic linkifyEmailAddresses()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyEmailAddresses()Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    check-cast v0, Lorg/bluecabin/textoo/TextLinkify;

    return-object v0
.end method

.method public final bridge synthetic linkifyEmailAddresses()Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyEmailAddresses()Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    check-cast v0, Lorg/bluecabin/textoo/TextViewConfigurator;

    return-object v0
.end method

.method public final linkifyMapAddresses()Lorg/bluecabin/textoo/Configurator;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->linkifyMapAddresses(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic linkifyMapAddresses()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyMapAddresses()Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    check-cast v0, Lorg/bluecabin/textoo/TextLinkify;

    return-object v0
.end method

.method public final bridge synthetic linkifyMapAddresses()Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyMapAddresses()Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    check-cast v0, Lorg/bluecabin/textoo/TextViewConfigurator;

    return-object v0
.end method

.method public final linkifyPhoneNumbers()Lorg/bluecabin/textoo/Configurator;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->linkifyPhoneNumbers(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic linkifyPhoneNumbers()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyPhoneNumbers()Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    check-cast v0, Lorg/bluecabin/textoo/TextLinkify;

    return-object v0
.end method

.method public final bridge synthetic linkifyPhoneNumbers()Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyPhoneNumbers()Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    check-cast v0, Lorg/bluecabin/textoo/TextViewConfigurator;

    return-object v0
.end method

.method public linkifyText(Landroid/widget/TextView;I)Landroid/widget/TextView;
    .locals 0

    .line 36
    invoke-static {p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    return-object p1
.end method

.method public linkifyText(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 0

    .line 41
    invoke-static {p1, p2, p3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    return-object p1
.end method

.method public linkifyText(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Landroid/widget/TextView;
    .locals 0

    .line 47
    invoke-static {p1, p2, p3, p4, p5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-object p1
.end method

.method public bridge synthetic linkifyText(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyText(Landroid/widget/TextView;I)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linkifyText(Ljava/lang/Object;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyText(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linkifyText(Ljava/lang/Object;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p5}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyText(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public final linkifyWebUrls()Lorg/bluecabin/textoo/Configurator;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->linkifyWebUrls(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic linkifyWebUrls()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyWebUrls()Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    check-cast v0, Lorg/bluecabin/textoo/TextLinkify;

    return-object v0
.end method

.method public final bridge synthetic linkifyWebUrls()Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->linkifyWebUrls()Lorg/bluecabin/textoo/Configurator;

    move-result-object v0

    check-cast v0, Lorg/bluecabin/textoo/TextViewConfigurator;

    return-object v0
.end method

.method public synthetic org$bluecabin$textoo$impl$LinksHandlingImpl$$super$toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl$class;->toResult(Lorg/bluecabin/textoo/impl/ConfiguratorImpl;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink()Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$lzycompute()Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink$module:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;

    :goto_0
    return-object v0
.end method

.method public setSpanned(Landroid/widget/TextView;Landroid/text/Spanned;)Landroid/widget/TextView;
    .locals 0

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public bridge synthetic setSpanned(Ljava/lang/Object;Landroid/text/Spanned;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->setSpanned(Landroid/widget/TextView;Landroid/text/Spanned;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public setSpannedToResult(Landroid/text/Spanned;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 58
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public bridge synthetic setSpannedToResult(Landroid/text/Spanned;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->setSpannedToResult(Landroid/text/Spanned;Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public textooContext()Lorg/bluecabin/textoo/TextooContext;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->textooContext:Lorg/bluecabin/textoo/TextooContext;

    return-object v0
.end method

.method public toResult(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 4

    .line 70
    invoke-static {p0, p1}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$class;->toResult(Lorg/bluecabin/textoo/impl/LinksHandlingImpl;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 71
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 72
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    .line 73
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 74
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->toResult(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updateChanges(Lscala/collection/immutable/Queue;)Lorg/bluecabin/textoo/Configurator;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->updateChanges(Lscala/collection/immutable/Queue;)Lorg/bluecabin/textoo/TextViewConfigurator;

    move-result-object p1

    return-object p1
.end method

.method public updateChanges(Lscala/collection/immutable/Queue;)Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "Landroid/widget/TextView;",
            ">;>;)",
            "Lorg/bluecabin/textoo/TextViewConfigurator;"
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;

    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->initState()Lscala/Function0;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->handlers()Lscala/collection/immutable/Queue;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->textooContext()Lorg/bluecabin/textoo/TextooContext;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;-><init>(Lscala/Function0;Lscala/collection/immutable/Queue;Lscala/collection/immutable/Queue;Lorg/bluecabin/textoo/TextooContext;)V

    return-object v0
.end method

.method public bridge synthetic updateHandlers(Lscala/collection/immutable/Queue;)Lorg/bluecabin/textoo/Configurator;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->updateHandlers(Lscala/collection/immutable/Queue;)Lorg/bluecabin/textoo/TextViewConfigurator;

    move-result-object p1

    return-object p1
.end method

.method public updateHandlers(Lscala/collection/immutable/Queue;)Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/LinksHandler;",
            ">;)",
            "Lorg/bluecabin/textoo/TextViewConfigurator;"
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;

    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->initState()Lscala/Function0;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->changes()Lscala/collection/immutable/Queue;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->textooContext()Lorg/bluecabin/textoo/TextooContext;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;-><init>(Lscala/Function0;Lscala/collection/immutable/Queue;Lscala/collection/immutable/Queue;Lorg/bluecabin/textoo/TextooContext;)V

    return-object v0
.end method
