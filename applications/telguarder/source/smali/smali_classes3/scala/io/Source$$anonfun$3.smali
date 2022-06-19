.class public final Lscala/io/Source$$anonfun$3;
.super Lscala/runtime/AbstractFunction0;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/io/BufferedSource;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final codec$1:Lscala/io/Codec;

.field private final is$1:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lscala/io/Codec;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lscala/io/Source$$anonfun$3;->is$1:Ljava/io/InputStream;

    iput-object p2, p0, Lscala/io/Source$$anonfun$3;->codec$1:Lscala/io/Codec;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lscala/io/Source$$anonfun$3;->apply()Lscala/io/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/io/BufferedSource;
    .locals 3

    .line 169
    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    iget-object v1, p0, Lscala/io/Source$$anonfun$3;->is$1:Ljava/io/InputStream;

    iget-object v2, p0, Lscala/io/Source$$anonfun$3;->codec$1:Lscala/io/Codec;

    invoke-virtual {v0, v1, v2}, Lscala/io/Source$;->fromInputStream(Ljava/io/InputStream;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object v0

    return-object v0
.end method
