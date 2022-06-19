.class public Lo10$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo10$b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lo10$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo10$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo10$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lo10$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lo10$b;->c:Lo10$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lo10$b$a;
    .locals 1

    new-instance v0, Lo10$b$a;

    invoke-direct {v0, p0}, Lo10$b$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
