.class public final synthetic Ln7/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/b;


# instance fields
.field public final synthetic a:Ln7/s;

.field public final synthetic b:Ln7/g$a;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ln7/s;Ln7/g$a;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/o;->a:Ln7/s;

    iput-object p2, p0, Ln7/o;->b:Ln7/g$a;

    iput-object p3, p0, Ln7/o;->c:Landroid/net/Uri;

    iput p4, p0, Ln7/o;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 6

    iget-object v0, p0, Ln7/o;->a:Ln7/s;

    iget-object v1, p0, Ln7/o;->b:Ln7/g$a;

    iget-object v2, p0, Ln7/o;->c:Landroid/net/Uri;

    iget v3, p0, Ln7/o;->d:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v5, v1, Ln7/g$a;->c:Ll7/b;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Ln7/s;->o(Ln7/g$a;Landroid/net/Uri;IZLl7/b;)Ll7/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    return-void
.end method
