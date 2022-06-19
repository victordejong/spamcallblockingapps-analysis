.class public final Lscala/io/Source$$anonfun$fromFile$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
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


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final inputStream$1:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lscala/io/Source$$anonfun$fromFile$1;->inputStream$1:Ljava/io/FileInputStream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lscala/io/Source$$anonfun$fromFile$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 1

    .line 97
    iget-object v0, p0, Lscala/io/Source$$anonfun$fromFile$1;->inputStream$1:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 1

    .line 97
    iget-object v0, p0, Lscala/io/Source$$anonfun$fromFile$1;->inputStream$1:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method
