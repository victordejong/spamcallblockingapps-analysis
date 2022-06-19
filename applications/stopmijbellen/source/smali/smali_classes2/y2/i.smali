.class public final synthetic Ly2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/a$a;


# instance fields
.field public final synthetic a:Ly2/n;

.field public final synthetic b:Lu2/i;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ly2/n;Lu2/i;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/i;->a:Ly2/n;

    iput-object p2, p0, Ly2/i;->b:Lu2/i;

    iput p3, p0, Ly2/i;->c:I

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ly2/i;->a:Ly2/n;

    iget-object v1, p0, Ly2/i;->b:Lu2/i;

    iget v2, p0, Ly2/i;->c:I

    .line 1
    iget-object v0, v0, Ly2/n;->d:Ly2/t;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Ly2/t;->a(Lu2/i;I)V

    const/4 v0, 0x0

    return-object v0
.end method
