.class public final Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$parseHtml$2;
.super Lscala/runtime/AbstractFunction0;
.source "StringConfiguratorImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;->parseHtml(Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Lorg/bluecabin/textoo/SpannedConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Landroid/text/Spannable;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;

.field private final imageGetter$1:Landroid/text/Html$ImageGetter;

.field private final tagHandler$1:Landroid/text/Html$TagHandler;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)V
    .locals 0

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$parseHtml$2;->$outer:Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;

    iput-object p2, p0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$parseHtml$2;->imageGetter$1:Landroid/text/Html$ImageGetter;

    iput-object p3, p0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$parseHtml$2;->tagHandler$1:Landroid/text/Html$TagHandler;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Landroid/text/Spannable;
    .locals 5

    sget-object v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    .line 30
    sget-object v1, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$;

    iget-object v2, p0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$parseHtml$2;->$outer:Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;

    invoke-virtual {v2}, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;->apply()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$parseHtml$2;->imageGetter$1:Landroid/text/Html$ImageGetter;

    iget-object v4, p0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$parseHtml$2;->tagHandler$1:Landroid/text/Html$TagHandler;

    invoke-static {v2, v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->ImplicitCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->toSpannable$extension(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$parseHtml$2;->apply()Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method
