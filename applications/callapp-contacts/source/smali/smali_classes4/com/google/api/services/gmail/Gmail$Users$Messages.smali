.class public final Lcom/google/api/services/gmail/Gmail$Users$Messages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Messages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Untrash;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Trash;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Send;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Modify;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$List;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Insert;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$GmailImport;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Delete;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchModify;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages$BatchDelete;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/gmail/Gmail$Users;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users;)V
    .locals 0

    .line 2499
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->a:Lcom/google/api/services/gmail/Gmail$Users;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2856
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Messages$Get;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    iget-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->a:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object p1, p1, Lcom/google/api/services/gmail/Gmail$Users;->a:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {p1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/b;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Messages$List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3581
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Messages$List;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;Ljava/lang/String;)V

    .line 3582
    iget-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages;->a:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object p1, p1, Lcom/google/api/services/gmail/Gmail$Users;->a:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {p1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/b;)V

    return-object v0
.end method
