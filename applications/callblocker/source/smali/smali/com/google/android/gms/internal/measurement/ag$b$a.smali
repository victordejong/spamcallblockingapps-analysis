.class public final Lcom/google/android/gms/internal/measurement/ag$b$a;
.super Lcom/google/android/gms/internal/measurement/ed$b;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/ag$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed$b",
        "<",
        "Lcom/google/android/gms/internal/measurement/ag$b;",
        "Lcom/google/android/gms/internal/measurement/ag$b$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ag$b;->m()Lcom/google/android/gms/internal/measurement/ag$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ed$b;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ah;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ag$b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/measurement/ag$c;)Lcom/google/android/gms/internal/measurement/ag$b$a;
    .locals 1

    .prologue
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ag$b;->a(Lcom/google/android/gms/internal/measurement/ag$b;ILcom/google/android/gms/internal/measurement/ag$c;)V

    .line 17
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ag$b$a;
    .locals 1

    .prologue
    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ag$b;->a(Lcom/google/android/gms/internal/measurement/ag$b;Ljava/lang/String;)V

    .line 9
    return-object p0
.end method

.method public final a(I)Lcom/google/android/gms/internal/measurement/ag$c;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ag$b;->a(I)Lcom/google/android/gms/internal/measurement/ag$c;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$b;->e()I

    move-result v0

    return v0
.end method
