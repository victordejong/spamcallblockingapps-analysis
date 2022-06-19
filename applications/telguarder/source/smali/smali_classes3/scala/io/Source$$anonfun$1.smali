.class public final Lscala/io/Source$$anonfun$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "Source.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/io/Source$;->fromInputStream(Ljava/io/InputStream;Lscala/io/Codec;)Lscala/io/BufferedSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final is$1:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lscala/io/Source$$anonfun$1;->is$1:Ljava/io/InputStream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lscala/io/Source$$anonfun$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 1

    .line 169
    iget-object v0, p0, Lscala/io/Source$$anonfun$1;->is$1:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 1

    .line 169
    iget-object v0, p0, Lscala/io/Source$$anonfun$1;->is$1:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
