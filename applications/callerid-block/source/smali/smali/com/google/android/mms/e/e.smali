.class public final Lcom/google/android/mms/e/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/mms/c/f;

.field private final b:I

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/google/android/mms/c/f;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/mms/e/e;->a:Lcom/google/android/mms/c/f;

    iput p2, p0, Lcom/google/android/mms/e/e;->b:I

    iput-wide p3, p0, Lcom/google/android/mms/e/e;->c:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/mms/e/e;->b:I

    return v0
.end method

.method public b()Lcom/google/android/mms/c/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/mms/e/e;->a:Lcom/google/android/mms/c/f;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/mms/e/e;->c:J

    return-wide v0
.end method
