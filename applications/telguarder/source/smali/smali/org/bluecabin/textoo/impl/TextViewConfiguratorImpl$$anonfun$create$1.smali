.class public final Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$$anonfun$create$1;
.super Lscala/runtime/AbstractFunction0;
.source "TextViewConfiguratorImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$;->create(Lorg/bluecabin/textoo/TextooContext;Landroid/widget/TextView;)Lorg/bluecabin/textoo/TextViewConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Landroid/widget/TextView;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final view$1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$$anonfun$create$1;->view$1:Landroid/widget/TextView;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Landroid/widget/TextView;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$$anonfun$create$1;->view$1:Landroid/widget/TextView;

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$$anonfun$create$1;->apply()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
