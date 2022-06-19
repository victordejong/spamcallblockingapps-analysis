.class public Lcom/criteo/publisher/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/x$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lkotlin/Lazy;

.field public final c:Lcom/criteo/publisher/h;

.field private final d:Lcom/criteo/publisher/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/criteo/publisher/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/criteo/publisher/x$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/h;Lcom/criteo/publisher/c/d;)V
    .locals 1

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uniqueIdGenerator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/x;->c:Lcom/criteo/publisher/h;

    iput-object p2, p0, Lcom/criteo/publisher/x;->d:Lcom/criteo/publisher/c/d;

    .line 31
    invoke-interface {p1}, Lcom/criteo/publisher/h;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/criteo/publisher/x;->a:J

    .line 36
    new-instance p1, Lcom/criteo/publisher/x$b;

    invoke-direct {p1, p0}, Lcom/criteo/publisher/x$b;-><init>(Lcom/criteo/publisher/x;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/x;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/criteo/publisher/x;)Lcom/criteo/publisher/c/d;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/criteo/publisher/x;->d:Lcom/criteo/publisher/c/d;

    return-object p0
.end method
