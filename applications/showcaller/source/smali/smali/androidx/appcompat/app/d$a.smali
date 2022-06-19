.class Landroidx/appcompat/app/d$a;
.super Ljava/lang/Object;
.source "AppCompatDialog.java"

# interfaces
.implements Lb/h/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/appcompat/app/d;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/d$a;->d:Landroidx/appcompat/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d$a;->d:Landroidx/appcompat/app/d;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/d;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
