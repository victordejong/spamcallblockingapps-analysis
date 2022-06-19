.class public Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/AWS4Signer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderSigningResult"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[B

.field private final d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->a:Ljava/lang/String;

    .line 385
    iput-object p2, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->b:Ljava/lang/String;

    .line 386
    iput-object p3, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->c:[B

    .line 387
    iput-object p4, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->d:[B

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->d:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 406
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
