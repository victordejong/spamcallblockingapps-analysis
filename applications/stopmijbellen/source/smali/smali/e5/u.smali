.class public Le5/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ll5/d;

.field public final synthetic b:Le5/v;


# direct methods
.method public constructor <init>(Le5/v;Ll5/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le5/u;->b:Le5/v;

    iput-object p2, p0, Le5/u;->a:Ll5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le5/u;->b:Le5/v;

    iget-object v1, p0, Le5/u;->a:Ll5/d;

    invoke-static {v0, v1}, Le5/v;->a(Le5/v;Ll5/d;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
