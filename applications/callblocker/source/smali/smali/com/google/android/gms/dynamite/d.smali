.class final Lcom/google/android/gms/dynamite/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$a$b;)Lcom/google/android/gms/dynamite/DynamiteModule$a$a;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;-><init>()V

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->a:I

    .line 4
    iget v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->a:I

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->b:I

    .line 7
    :goto_0
    iget v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->a:I

    if-nez v1, :cond_1

    iget v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->b:I

    if-nez v1, :cond_1

    .line 8
    iput v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->c:I

    .line 12
    :goto_1
    return-object v0

    .line 6
    :cond_0
    invoke-interface {p3, p1, p2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->b:I

    goto :goto_0

    .line 9
    :cond_1
    iget v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->a:I

    iget v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->b:I

    if-lt v1, v2, :cond_2

    .line 10
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->c:I

    goto :goto_1

    .line 11
    :cond_2
    iput v3, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->c:I

    goto :goto_1
.end method
