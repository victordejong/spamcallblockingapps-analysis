.class public Lc0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/d;->b(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc0/d$c;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc0/d$c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc0/d$a;->a:Lc0/d$c;

    iput-object p2, p0, Lc0/d$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc0/d$a;->a:Lc0/d$c;

    iget-object v1, p0, Lc0/d$a;->b:Ljava/lang/Object;

    iput-object v1, v0, Lc0/d$c;->a:Ljava/lang/Object;

    return-void
.end method
