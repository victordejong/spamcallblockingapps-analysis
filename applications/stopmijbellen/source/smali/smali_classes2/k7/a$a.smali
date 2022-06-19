.class public Lk7/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7/a;->k(Lk7/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk7/l;

.field public final synthetic b:Lk7/a;


# direct methods
.method public constructor <init>(Lk7/a;Lk7/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/a$a;->b:Lk7/a;

    iput-object p2, p0, Lk7/a$a;->a:Lk7/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/a$a;->b:Lk7/a;

    iget-object v1, p0, Lk7/a$a;->a:Lk7/l;

    invoke-virtual {v0, v1}, Lk7/a;->k(Lk7/l;)V

    return-void
.end method
