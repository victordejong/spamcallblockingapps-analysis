.class public final Lcom/liulishuo/filedownloader/message/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/liulishuo/filedownloader/message/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liulishuo/filedownloader/message/b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/message/b;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/message/b$a;->a:Lcom/liulishuo/filedownloader/message/b;

    return-void
.end method

.method static synthetic a()Lcom/liulishuo/filedownloader/message/b;
    .locals 1

    sget-object v0, Lcom/liulishuo/filedownloader/message/b$a;->a:Lcom/liulishuo/filedownloader/message/b;

    return-object v0
.end method
