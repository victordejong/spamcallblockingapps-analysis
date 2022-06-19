.class public final Lcom/google/android/gms/internal/measurement/al$b$a;
.super Lcom/google/android/gms/internal/measurement/ed$b;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/al$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed$b",
        "<",
        "Lcom/google/android/gms/internal/measurement/al$b;",
        "Lcom/google/android/gms/internal/measurement/al$b$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/al$b;->k()Lcom/google/android/gms/internal/measurement/al$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ed$b;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/an;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/al$b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/al$b$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/al$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/al$b;->f()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/internal/measurement/al$a;
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/al$b$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/al$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/al$b;->a(I)Lcom/google/android/gms/internal/measurement/al$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/al$a$a;)Lcom/google/android/gms/internal/measurement/al$b$a;
    .locals 2

    .prologue
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/al$b$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/al$b;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v1, Lcom/google/android/gms/internal/measurement/al$a;

    .line 11
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/al$b;->a(Lcom/google/android/gms/internal/measurement/al$b;ILcom/google/android/gms/internal/measurement/al$a;)V

    .line 12
    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/al$b$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/al$b;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/al$b;->g()Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/al$b$a;
    .locals 1

    .prologue
    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/al$b$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/al$b;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/al$b;->a(Lcom/google/android/gms/internal/measurement/al$b;)V

    .line 21
    return-object p0
.end method
