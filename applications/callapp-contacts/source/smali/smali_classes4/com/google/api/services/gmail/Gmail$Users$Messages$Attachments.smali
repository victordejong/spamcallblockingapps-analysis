.class public final Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Attachments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments$Get;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/gmail/Gmail$Users$Messages;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Messages;)V
    .locals 0

    .line 4349
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Messages$Attachments;->a:Lcom/google/api/services/gmail/Gmail$Users$Messages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
