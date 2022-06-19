.class final Landroidx/fragment/app/z$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/z;->a(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;Landroidx/fragment/app/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/z$a;

.field final synthetic b:Landroidx/fragment/app/z;


# direct methods
.method constructor <init>(Landroidx/fragment/app/z;Landroidx/fragment/app/z$a;)V
    .locals 0

    .line 214
    iput-object p1, p0, Landroidx/fragment/app/z$2;->b:Landroidx/fragment/app/z;

    iput-object p2, p0, Landroidx/fragment/app/z$2;->a:Landroidx/fragment/app/z$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 217
    iget-object v0, p0, Landroidx/fragment/app/z$2;->b:Landroidx/fragment/app/z;

    iget-object v0, v0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/z$2;->a:Landroidx/fragment/app/z$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Landroidx/fragment/app/z$2;->b:Landroidx/fragment/app/z;

    iget-object v0, v0, Landroidx/fragment/app/z;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/z$2;->a:Landroidx/fragment/app/z$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
