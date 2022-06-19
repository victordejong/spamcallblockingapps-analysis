.class public final Lcom/google/android/exoplayer2/extractor/z$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/z$b;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/z$b;->b:[Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/z$b;->c:I

    return-void
.end method
