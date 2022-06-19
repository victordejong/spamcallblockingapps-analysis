.class public final Lcom/google/android/exoplayer2/extractor/f/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/f/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/UUID;

.field public final b:I

.field final c:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/h$a;->a:Ljava/util/UUID;

    .line 203
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/f/h$a;->b:I

    .line 204
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/f/h$a;->c:[B

    return-void
.end method
