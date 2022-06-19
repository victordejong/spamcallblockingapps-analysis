.class public Lcom/google/android/material/f/d$c;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/google/android/material/f/d;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/google/android/material/f/d;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/google/android/material/f/d$c;

    const-string/jumbo v1, "circularRevealScrimColor"

    invoke-direct {v0, v1}, Lcom/google/android/material/f/d$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/f/d$c;->a:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 234
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 235
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/f/d;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 240
    invoke-interface {p1}, Lcom/google/android/material/f/d;->getCircularRevealScrimColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/material/f/d;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/material/f/d;->setCircularRevealScrimColor(I)V

    .line 246
    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    check-cast p1, Lcom/google/android/material/f/d;

    invoke-virtual {p0, p1}, Lcom/google/android/material/f/d$c;->a(Lcom/google/android/material/f/d;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    check-cast p1, Lcom/google/android/material/f/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/f/d$c;->a(Lcom/google/android/material/f/d;Ljava/lang/Integer;)V

    return-void
.end method
