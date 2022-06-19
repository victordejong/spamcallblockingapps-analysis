.class public Lcom/google/android/material/f/d$a;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/google/android/material/f/d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Lcom/google/android/material/f/d$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/material/f/d$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/google/android/material/f/d$a;

    invoke-direct {v0}, Lcom/google/android/material/f/d$a;-><init>()V

    sput-object v0, Lcom/google/android/material/f/d$a;->a:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Lcom/google/android/material/f/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/f/d$d;-><init>(Lcom/google/android/material/f/d$1;)V

    iput-object v0, p0, Lcom/google/android/material/f/d$a;->b:Lcom/google/android/material/f/d$d;

    return-void
.end method


# virtual methods
.method public a(FLcom/google/android/material/f/d$d;Lcom/google/android/material/f/d$d;)Lcom/google/android/material/f/d$d;
    .locals 5

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/material/f/d$a;->b:Lcom/google/android/material/f/d$d;

    iget v1, p2, Lcom/google/android/material/f/d$d;->a:F

    iget v2, p3, Lcom/google/android/material/f/d$d;->a:F

    .line 217
    invoke-static {v1, v2, p1}, Lcom/google/android/material/l/a;->a(FFF)F

    move-result v1

    iget v2, p2, Lcom/google/android/material/f/d$d;->b:F

    iget v3, p3, Lcom/google/android/material/f/d$d;->b:F

    .line 218
    invoke-static {v2, v3, p1}, Lcom/google/android/material/l/a;->a(FFF)F

    move-result v2

    iget v3, p2, Lcom/google/android/material/f/d$d;->c:F

    iget v4, p3, Lcom/google/android/material/f/d$d;->c:F

    .line 219
    invoke-static {v3, v4, p1}, Lcom/google/android/material/l/a;->a(FFF)F

    move-result v3

    .line 216
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/f/d$d;->a(FFF)V

    .line 220
    iget-object v0, p0, Lcom/google/android/material/f/d$a;->b:Lcom/google/android/material/f/d$d;

    return-object v0
.end method

.method public synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    check-cast p2, Lcom/google/android/material/f/d$d;

    check-cast p3, Lcom/google/android/material/f/d$d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/f/d$a;->a(FLcom/google/android/material/f/d$d;Lcom/google/android/material/f/d$d;)Lcom/google/android/material/f/d$d;

    move-result-object v0

    return-object v0
.end method
