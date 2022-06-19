.class public final Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$create$1;
.super Lscala/runtime/AbstractFunction0;
.source "StringConfiguratorImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$;->create(Lorg/bluecabin/textoo/TextooContext;Ljava/lang/String;)Lorg/bluecabin/textoo/StringConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final text$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$create$1;->text$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$create$1;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$create$1;->text$1:Ljava/lang/String;

    return-object v0
.end method
