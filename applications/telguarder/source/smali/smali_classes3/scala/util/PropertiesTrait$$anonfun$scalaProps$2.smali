.class public final Lscala/util/PropertiesTrait$$anonfun$scalaProps$2;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "Properties.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/PropertiesTrait;->scalaProps()Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final stream$1:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lscala/util/PropertiesTrait;Ljava/io/InputStream;)V
    .locals 0

    .line 38
    iput-object p2, p0, Lscala/util/PropertiesTrait$$anonfun$scalaProps$2;->stream$1:Ljava/io/InputStream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lscala/util/PropertiesTrait$$anonfun$scalaProps$2;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 1

    .line 38
    iget-object v0, p0, Lscala/util/PropertiesTrait$$anonfun$scalaProps$2;->stream$1:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 1

    .line 38
    iget-object v0, p0, Lscala/util/PropertiesTrait$$anonfun$scalaProps$2;->stream$1:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
