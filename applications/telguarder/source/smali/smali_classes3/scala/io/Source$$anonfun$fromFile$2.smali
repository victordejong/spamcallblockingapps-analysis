.class public final Lscala/io/Source$$anonfun$fromFile$2;
.super Lscala/runtime/AbstractFunction0;
.source "Source.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/io/Source$;->fromFile(Ljava/io/File;ILscala/io/Codec;)Lscala/io/BufferedSource;
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
.field private final bufferSize$1:I

.field private final codec$2:Lscala/io/Codec;

.field private final file$1:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;ILscala/io/Codec;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lscala/io/Source$$anonfun$fromFile$2;->file$1:Ljava/io/File;

    iput p2, p0, Lscala/io/Source$$anonfun$fromFile$2;->bufferSize$1:I

    iput-object p3, p0, Lscala/io/Source$$anonfun$fromFile$2;->codec$2:Lscala/io/Codec;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lscala/io/Source$$anonfun$fromFile$2;->apply()Lscala/io/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/io/BufferedSource;
    .locals 4

    .line 96
    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    iget-object v1, p0, Lscala/io/Source$$anonfun$fromFile$2;->file$1:Ljava/io/File;

    iget v2, p0, Lscala/io/Source$$anonfun$fromFile$2;->bufferSize$1:I

    iget-object v3, p0, Lscala/io/Source$$anonfun$fromFile$2;->codec$2:Lscala/io/Codec;

    invoke-virtual {v0, v1, v2, v3}, Lscala/io/Source$;->fromFile(Ljava/io/File;ILscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object v0

    return-object v0
.end method
