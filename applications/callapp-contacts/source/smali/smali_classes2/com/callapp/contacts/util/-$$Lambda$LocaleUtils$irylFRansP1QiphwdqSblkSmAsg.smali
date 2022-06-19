.class public final synthetic Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/play/core/tasks/c;


# instance fields
.field public final synthetic f$0:Lcom/google/android/play/core/splitinstall/a;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;->f$0:Lcom/google/android/play/core/splitinstall/a;

    iput-object p2, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;->f$0:Lcom/google/android/play/core/splitinstall/a;

    iget-object v1, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$irylFRansP1QiphwdqSblkSmAsg;->f$4:Z

    move-object v5, p1

    check-cast v5, Ljava/lang/Integer;

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/util/LocaleUtils;->lambda$irylFRansP1QiphwdqSblkSmAsg(Lcom/google/android/play/core/splitinstall/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;)V

    return-void
.end method
