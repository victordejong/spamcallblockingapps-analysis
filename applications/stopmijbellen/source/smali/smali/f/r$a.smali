.class public Lf/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/r;


# direct methods
.method public constructor <init>(Lf/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/r$a;->a:Lf/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/r$a;->a:Lf/r;

    invoke-virtual {v0, p1}, Lf/r;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
