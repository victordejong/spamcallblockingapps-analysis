.class final Lcom/google/android/material/floatingactionbutton/c$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/floatingactionbutton/c;


# direct methods
.method private constructor <init>(Lcom/google/android/material/floatingactionbutton/c;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c$a;->a:Lcom/google/android/material/floatingactionbutton/c;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/floatingactionbutton/c;Lcom/google/android/material/floatingactionbutton/c$1;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/c$a;-><init>(Lcom/google/android/material/floatingactionbutton/c;)V

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c$a;->a:Lcom/google/android/material/floatingactionbutton/c;

    return-object v0
.end method
