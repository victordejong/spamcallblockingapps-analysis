.class public final Lcom/google/android/gms/measurement/internal/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/do;

.field private final b:I

.field private final c:Z

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/do;IZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/dm;->a:Lcom/google/android/gms/measurement/internal/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/measurement/internal/dm;->b:I

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/dm;->c:Z

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/dm;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dm;->a:Lcom/google/android/gms/measurement/internal/do;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/dm;->b:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/dm;->c:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/dm;->d:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/do;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dm;->a:Lcom/google/android/gms/measurement/internal/do;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/dm;->b:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/dm;->c:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/dm;->d:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/do;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dm;->a:Lcom/google/android/gms/measurement/internal/do;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/dm;->b:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/dm;->c:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/dm;->d:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/do;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dm;->a:Lcom/google/android/gms/measurement/internal/do;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/dm;->b:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/dm;->c:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/dm;->d:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/do;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
