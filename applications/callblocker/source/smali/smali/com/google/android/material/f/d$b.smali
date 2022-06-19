.class public Lcom/google/android/material/f/d$b;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/google/android/material/f/d;",
        "Lcom/google/android/material/f/d$d;",
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
            "Lcom/google/android/material/f/d$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Lcom/google/android/material/f/d$b;

    const-string/jumbo v1, "circularReveal"

    invoke-direct {v0, v1}, Lcom/google/android/material/f/d$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/f/d$b;->a:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    const-class v0, Lcom/google/android/material/f/d$d;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 186
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/f/d;)Lcom/google/android/material/f/d$d;
    .locals 1

    .prologue
    .line 191
    invoke-interface {p1}, Lcom/google/android/material/f/d;->getRevealInfo()Lcom/google/android/material/f/d$d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/material/f/d;Lcom/google/android/material/f/d$d;)V
    .locals 0

    .prologue
    .line 196
    invoke-interface {p1, p2}, Lcom/google/android/material/f/d;->setRevealInfo(Lcom/google/android/material/f/d$d;)V

    .line 197
    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    check-cast p1, Lcom/google/android/material/f/d;

    invoke-virtual {p0, p1}, Lcom/google/android/material/f/d$b;->a(Lcom/google/android/material/f/d;)Lcom/google/android/material/f/d$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    check-cast p1, Lcom/google/android/material/f/d;

    check-cast p2, Lcom/google/android/material/f/d$d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/f/d$b;->a(Lcom/google/android/material/f/d;Lcom/google/android/material/f/d$d;)V

    return-void
.end method
