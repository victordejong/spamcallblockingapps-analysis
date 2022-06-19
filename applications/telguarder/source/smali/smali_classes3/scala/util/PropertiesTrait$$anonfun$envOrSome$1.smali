.class public final Lscala/util/PropertiesTrait$$anonfun$envOrSome$1;
.super Lscala/runtime/AbstractFunction0;
.source "Properties.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/PropertiesTrait;->envOrSome(Ljava/lang/String;Lscala/Option;)Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/Option<",
        "Ljava/lang/String;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final alt$2:Lscala/Option;


# direct methods
.method public constructor <init>(Lscala/util/PropertiesTrait;Lscala/Option;)V
    .locals 0

    .line 63
    iput-object p2, p0, Lscala/util/PropertiesTrait$$anonfun$envOrSome$1;->alt$2:Lscala/Option;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lscala/util/PropertiesTrait$$anonfun$envOrSome$1;->apply()Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lscala/util/PropertiesTrait$$anonfun$envOrSome$1;->alt$2:Lscala/Option;

    return-object v0
.end method
