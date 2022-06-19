.class final Lcom/google/android/material/slider/BaseSlider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/google/android/material/slider/BaseSlider;


# direct methods
.method private constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0

    .line 2374
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$a;->b:Lcom/google/android/material/slider/BaseSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2375
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/slider/BaseSlider;Lcom/google/android/material/slider/BaseSlider$1;)V
    .locals 0

    .line 2374
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider$a;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2383
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$a;->b:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {v0}, Lcom/google/android/material/slider/BaseSlider;->b(Lcom/google/android/material/slider/BaseSlider;)Lcom/google/android/material/slider/BaseSlider$b;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider$a;->a:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/slider/BaseSlider$b;->a(II)Z

    return-void
.end method
