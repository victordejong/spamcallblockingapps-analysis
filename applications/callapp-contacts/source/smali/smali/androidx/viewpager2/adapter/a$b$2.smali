.class final Landroidx/viewpager2/adapter/a$b$2;
.super Landroidx/viewpager2/adapter/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/adapter/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/adapter/a$b;


# direct methods
.method constructor <init>(Landroidx/viewpager2/adapter/a$b;)V
    .locals 0

    .line 643
    iput-object p1, p0, Landroidx/viewpager2/adapter/a$b$2;->a:Landroidx/viewpager2/adapter/a$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/a$a;-><init>(Landroidx/viewpager2/adapter/a$1;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 646
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$b$2;->a:Landroidx/viewpager2/adapter/a$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/adapter/a$b;->a(Z)V

    return-void
.end method
