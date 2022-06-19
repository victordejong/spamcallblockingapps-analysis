.class public Ld2/d2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/d2;->b(Ld2/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/x;

.field public final synthetic b:Ld2/d2;


# direct methods
.method public constructor <init>(Ld2/d2;Ld2/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/d2$a;->b:Ld2/d2;

    iput-object p2, p0, Ld2/d2$a;->a:Ld2/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/d2$a;->b:Ld2/d2;

    iget-object v0, v0, Ld2/d2;->c:Ljava/util/List;

    iget-object v1, p0, Ld2/d2$a;->a:Ld2/x;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
