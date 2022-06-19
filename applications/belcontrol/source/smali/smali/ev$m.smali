.class public Lev$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev;->j0(Lev$j0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lev$j0;

.field public final synthetic b:Landroidx/media2/common/SessionPlayer$a;


# direct methods
.method public constructor <init>(Lev;Lev$j0;Landroidx/media2/common/SessionPlayer$a;)V
    .locals 0

    iput-object p2, p0, Lev$m;->a:Lev$j0;

    iput-object p3, p0, Lev$m;->b:Landroidx/media2/common/SessionPlayer$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lev$m;->a:Lev$j0;

    iget-object v1, p0, Lev$m;->b:Landroidx/media2/common/SessionPlayer$a;

    invoke-interface {v0, v1}, Lev$j0;->a(Landroidx/media2/common/SessionPlayer$a;)V

    return-void
.end method
