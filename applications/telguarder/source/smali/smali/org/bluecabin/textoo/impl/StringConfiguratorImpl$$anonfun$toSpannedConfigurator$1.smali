.class public final Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$toSpannedConfigurator$1;
.super Lscala/runtime/AbstractFunction0;
.source "StringConfiguratorImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;->toSpannedConfigurator()Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Landroid/text/Spanned;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;)V
    .locals 0

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$toSpannedConfigurator$1;->$outer:Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Landroid/text/Spanned;
    .locals 3

    sget-object v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    .line 33
    sget-object v1, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$;

    iget-object v2, p0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$toSpannedConfigurator$1;->$outer:Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;

    invoke-virtual {v2}, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;->apply()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->ImplicitCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->toSpanned$extension(Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$toSpannedConfigurator$1;->apply()Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method
