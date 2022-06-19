.class public final Lcom/google/android/gms/measurement/internal/ea;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/dy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/dy;IZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ea;->d:Lcom/google/android/gms/measurement/internal/dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/measurement/internal/ea;->a:I

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/ea;->b:Z

    .line 4
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/ea;->c:Z

    .line 5
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ea;->d:Lcom/google/android/gms/measurement/internal/dy;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/ea;->a:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/ea;->b:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/ea;->c:Z

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/dy;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ea;->d:Lcom/google/android/gms/measurement/internal/dy;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/ea;->a:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/ea;->b:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/ea;->c:Z

    move-object v4, p1

    move-object v5, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/dy;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ea;->d:Lcom/google/android/gms/measurement/internal/dy;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/ea;->a:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/ea;->b:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/ea;->c:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/dy;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ea;->d:Lcom/google/android/gms/measurement/internal/dy;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/ea;->a:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/ea;->b:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/ea;->c:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/dy;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    return-void
.end method
