.class public Lorg/mistergroup/shouldianswer/ui/main/c/a;
.super Ljava/lang/Object;
.source "LogItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/main/c/a$a;
    }
.end annotation


# instance fields
.field private final a:Lorg/mistergroup/shouldianswer/ui/main/c/a$a;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/a$a;)V
    .locals 1

    const-string v0, "itemType"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    return-void
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/ui/main/c/a$a;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    return-object v0
.end method
