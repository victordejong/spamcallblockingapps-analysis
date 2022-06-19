.class public Lc0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0;->j(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc0;


# direct methods
.method public constructor <init>(Lc0;)V
    .locals 0

    iput-object p1, p0, Lc0$a;->a:Lc0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc0$a;->a:Lc0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc0;->d(Z)V

    iget-object v0, p0, Lc0$a;->a:Lc0;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
