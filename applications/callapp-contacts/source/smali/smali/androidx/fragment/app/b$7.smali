.class final Landroidx/fragment/app/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/b;->a(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/z$b;Landroidx/fragment/app/z$b;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/z$b;

.field final synthetic b:Landroidx/fragment/app/z$b;

.field final synthetic c:Z

.field final synthetic d:Landroidx/b/a;

.field final synthetic e:Landroidx/fragment/app/b;


# direct methods
.method constructor <init>(Landroidx/fragment/app/b;Landroidx/fragment/app/z$b;Landroidx/fragment/app/z$b;ZLandroidx/b/a;)V
    .locals 0

    .line 454
    iput-object p1, p0, Landroidx/fragment/app/b$7;->e:Landroidx/fragment/app/b;

    iput-object p2, p0, Landroidx/fragment/app/b$7;->a:Landroidx/fragment/app/z$b;

    iput-object p3, p0, Landroidx/fragment/app/b$7;->b:Landroidx/fragment/app/z$b;

    iput-boolean p4, p0, Landroidx/fragment/app/b$7;->c:Z

    iput-object p5, p0, Landroidx/fragment/app/b$7;->d:Landroidx/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 457
    iget-object v0, p0, Landroidx/fragment/app/b$7;->a:Landroidx/fragment/app/z$b;

    .line 1558
    iget-object v0, v0, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 458
    iget-object v1, p0, Landroidx/fragment/app/b$7;->b:Landroidx/fragment/app/z$b;

    .line 2558
    iget-object v1, v1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 458
    iget-boolean v2, p0, Landroidx/fragment/app/b$7;->c:Z

    iget-object v3, p0, Landroidx/fragment/app/b$7;->d:Landroidx/b/a;

    .line 457
    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;)V

    return-void
.end method
