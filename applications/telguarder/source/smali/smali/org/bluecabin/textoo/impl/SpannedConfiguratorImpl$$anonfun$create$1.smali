.class public final Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$$anonfun$create$1;
.super Lscala/runtime/AbstractFunction0;
.source "SpannedConfiguratorImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$;->create(Lorg/bluecabin/textoo/TextooContext;Landroid/text/Spanned;)Lorg/bluecabin/textoo/SpannedConfigurator;
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
.field private final text$1:Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Landroid/text/Spanned;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$$anonfun$create$1;->text$1:Landroid/text/Spanned;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Landroid/text/Spanned;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$$anonfun$create$1;->text$1:Landroid/text/Spanned;

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$$anonfun$create$1;->apply()Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method
