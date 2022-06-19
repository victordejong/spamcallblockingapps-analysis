.class public final Lscala/util/PropertiesTrait$$anonfun$envOrElse$1;
.super Lscala/runtime/AbstractFunction0;
.source "Properties.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/PropertiesTrait;->envOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
.field public final alt$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/util/PropertiesTrait;Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p2, p0, Lscala/util/PropertiesTrait$$anonfun$envOrElse$1;->alt$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lscala/util/PropertiesTrait$$anonfun$envOrElse$1;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lscala/util/PropertiesTrait$$anonfun$envOrElse$1;->alt$1:Ljava/lang/String;

    return-object v0
.end method
