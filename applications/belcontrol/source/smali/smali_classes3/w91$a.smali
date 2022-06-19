.class public final enum Lw91$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw91$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lw91$a;

.field public static final enum B:Lw91$a;

.field public static final enum C:Lw91$a;

.field public static final enum D:Lw91$a;

.field public static final enum E:Lw91$a;

.field public static final enum F:Lw91$a;

.field public static final enum G:Lw91$a;

.field public static final enum H:Lw91$a;

.field public static final enum I:Lw91$a;

.field public static final enum J:Lw91$a;

.field public static final enum K:Lw91$a;

.field public static final enum L:Lw91$a;

.field public static final enum M:Lw91$a;

.field public static final enum N:Lw91$a;

.field public static final enum O:Lw91$a;

.field public static final enum P:Lw91$a;

.field public static final enum Q:Lw91$a;

.field public static final enum R:Lw91$a;

.field public static final enum S:Lw91$a;

.field public static final enum T:Lw91$a;

.field public static final enum U:Lw91$a;

.field public static final enum V:Lw91$a;

.field public static final enum W:Lw91$a;

.field public static final enum X:Lw91$a;

.field public static final enum Y:Lw91$a;

.field public static final enum Z:Lw91$a;

.field public static final enum a:Lw91$a;

.field public static final enum a0:Lw91$a;

.field public static final enum b:Lw91$a;

.field public static final enum b0:Lw91$a;

.field public static final enum c:Lw91$a;

.field public static final enum c0:Lw91$a;

.field public static final enum d:Lw91$a;

.field public static final enum d0:Lw91$a;

.field public static final enum e0:Lw91$a;

.field public static final enum f:Lw91$a;

.field public static final enum f0:Lw91$a;

.field public static final enum g:Lw91$a;

.field public static final enum g0:Lw91$a;

.field public static final enum h:Lw91$a;

.field public static final enum h0:Lw91$a;

.field public static final enum i0:Lw91$a;

.field public static final enum j:Lw91$a;

.field public static final enum j0:Lw91$a;

.field public static final enum k:Lw91$a;

.field public static final enum k0:Lw91$a;

.field public static final enum l:Lw91$a;

.field public static final synthetic l0:[Lw91$a;

.field public static final enum m:Lw91$a;

.field public static final enum n:Lw91$a;

.field public static final enum o:Lw91$a;

.field public static final enum p:Lw91$a;

.field public static final enum q:Lw91$a;

.field public static final enum r:Lw91$a;

.field public static final enum s:Lw91$a;

.field public static final enum t:Lw91$a;

.field public static final enum u:Lw91$a;

.field public static final enum v:Lw91$a;

.field public static final enum w:Lw91$a;

.field public static final enum x:Lw91$a;

.field public static final enum y:Lw91$a;

.field public static final enum z:Lw91$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lw91$a;

    sget v1, Li61;->stat_event_incoming_call:I

    const-string v2, "INCOMING_CALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->a:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->stat_event_incoming_sms:I

    const-string v2, "INCOMING_SMS"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->b:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->stat_event_incoming_mms:I

    const-string v2, "INCOMING_MMS"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->c:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->stat_event_blocked_call:I

    const-string v2, "BLOCKED_CALL"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->d:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->stat_event_blocked_sms:I

    const-string v2, "BLOCKED_SMS"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v7, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->f:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->stat_event_blocked_mms:I

    const-string v2, "BLOCKED_MMS"

    const/4 v8, 0x5

    invoke-direct {v0, v2, v8, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->g:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->stat_event_number_dialed:I

    const-string v2, "NUMBER_DIALED"

    const/4 v9, 0x6

    invoke-direct {v0, v2, v9, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->h:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->stat_event_purchase:I

    const-string v2, "PURCHASE"

    const/4 v10, 0x7

    invoke-direct {v0, v2, v10, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->j:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->legacy_mode_enable:I

    const-string v2, "LEGACY_MODE_ENABLE"

    const/16 v11, 0x8

    invoke-direct {v0, v2, v11, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->k:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->legacy_mode_disable:I

    const-string v2, "LEGACY_MODE_DISABLE"

    const/16 v12, 0x9

    invoke-direct {v0, v2, v12, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->l:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->stat_event_install:I

    const-string v2, "INSTALL"

    const/16 v13, 0xa

    invoke-direct {v0, v2, v13, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->m:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->stat_event_fresh_start:I

    const-string v2, "FRESH_START"

    const/16 v14, 0xb

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->n:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->stat_event_leave_review:I

    const-string v2, "LEAVE_REVIEW"

    const/16 v15, 0xc

    invoke-direct {v0, v2, v15, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->o:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_promt_to_change_blockmode:I

    const-string v2, "CHANGE_BLOCK_MODE"

    const/16 v15, 0xd

    invoke-direct {v0, v2, v15, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->p:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->stat_event_tos_accepted:I

    const-string v2, "TOS_ACCEPTED"

    const/16 v15, 0xe

    invoke-direct {v0, v2, v15, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->q:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_lookup_nodata:I

    const-string v2, "LOOKUP_NODATA"

    const/16 v15, 0xf

    invoke-direct {v0, v2, v15, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->r:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_lookup_ok:I

    const-string v2, "LOOKUP_OK"

    const/16 v15, 0x10

    invoke-direct {v0, v2, v15, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->s:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_lookup_failure:I

    const-string v2, "LOOKUP_FAILURE"

    const/16 v15, 0x11

    invoke-direct {v0, v2, v15, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->t:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_language:I

    const-string v2, "LANGUAGE_CHANGE"

    const/16 v15, 0x12

    invoke-direct {v0, v2, v15, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->u:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_language_system:I

    const-string v15, "LANGUAGE_SYSTEM"

    const/16 v14, 0x13

    invoke-direct {v0, v15, v14, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->v:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_version_upgrade_suggested:I

    const-string v15, "VERSION_UPGRADE_SUGGESTED"

    const/16 v14, 0x14

    invoke-direct {v0, v15, v14, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->w:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_version_upgrade_forced:I

    const-string v15, "VERSION_UPGRADE_FORCED"

    const/16 v14, 0x15

    invoke-direct {v0, v15, v14, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->x:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_push_notification_enable:I

    const-string v15, "PUSH_NOTIFICATION_ENABLE"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->y:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_push_notification_disable:I

    const-string v14, "PUSH_NOTIFICATION_DISABLE"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->z:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_push_notification_token_sent:I

    const-string v14, "PUSH_NOTIFICATION_TOKEN_SENT"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->A:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_push_notification_token_received:I

    const-string v14, "PUSH_NOTIFICATION_TOKEN_RECEIVED"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->B:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_push_notification_token_requested:I

    const-string v14, "PUSH_NOTIFICATION_TOKEN_REQUESTED"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->C:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_push_notification_token_failed:I

    const-string v14, "PUSH_NOTIFICATION_TOKEN_FAILED"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->D:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_push_notification_token_failed_server:I

    const-string v14, "PUSH_NOTIFICATION_TOKEN_FAILED_SERVER"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->E:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_push_notification_received_payload:I

    const-string v14, "PUSH_NOTIFICATION_RECEIVED_PAYLOAD"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->F:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_push_notification_executed:I

    const-string v14, "PUSH_NOTIFICATION_EXECUTED"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->G:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_push_notification_shown:I

    const-string v14, "PUSH_NOTIFICATION_SHOWN"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->H:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_push_notification_acted:I

    const-string v14, "PUSH_NOTIFICATION_ACTED"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->I:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_category_setting_dynamics:I

    const-string v14, "SETTING_DYNAMICS"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->J:Lw91$a;

    new-instance v0, Lw91$a;

    sget v2, Li61;->a_action_setting_dynamics_total:I

    const-string v14, "SETTING_DYNAMICS_USERS"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15, v2}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->K:Lw91$a;

    new-instance v0, Lw91$a;

    const-string v2, "SETTING_DYNAMICS_LANGUAGE"

    const/16 v14, 0x23

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->L:Lw91$a;

    new-instance v0, Lw91$a;

    const-string v2, "SETTING_DYNAMICS_MESSAGING_APP"

    const/16 v14, 0x24

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->M:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_phone_app:I

    const-string v2, "SETTING_DYNAMICS_PHONE_APP"

    const/16 v14, 0x25

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->N:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_custom_call_screen:I

    const-string v2, "SETTING_DYNAMICS_CUSTOM_CALL_SCREEN_UI"

    const/16 v14, 0x26

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->O:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_setting_dynamics_blocking_l1:I

    const-string v2, "SETTING_DYNAMICS_BLOCKING_L1"

    const/16 v14, 0x27

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->P:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_setting_dynamics_blocking_l2:I

    const-string v2, "SETTING_DYNAMICS_BLOCKING_L2"

    const/16 v14, 0x28

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->Q:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_setting_dynamics_blocking_conflict_priority:I

    const-string v2, "SETTING_DYNAMICS_BLOCKING_CONFLICT_PRIORITY"

    const/16 v14, 0x29

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->R:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_setting_dynamics_blocking_similar_numbers:I

    const-string v2, "SETTING_DYNAMICS_BLOCKING_SIMILAR_NUMBERS"

    const/16 v14, 0x2a

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->S:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_missed_call_overlay_displayed_blocked:I

    const-string v2, "MISSED_CALL_OVERLAY_DISPLAYED_BLOCKED"

    const/16 v14, 0x2b

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->T:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_missed_call_overlay_displayed_missed:I

    const-string v2, "MISSED_CALL_OVERLAY_DISPLAYED_MISSED"

    const/16 v14, 0x2c

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->U:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_missed_call_overlay_action_taken:I

    const-string v2, "MISSED_CALL_OVERLAY_ACTION_TAKEN"

    const/16 v14, 0x2d

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->V:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_label_sync_started:I

    const-string v2, "CCH_SYNC_BEGIN"

    const/16 v14, 0x2e

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->W:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_label_sync_finished:I

    const-string v2, "CCH_SYNC_FINISHED"

    const/16 v14, 0x2f

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->X:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_cch_device_activation:I

    const-string v2, "CCH_DEVICE_ACTIVATION"

    const/16 v14, 0x30

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->Y:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_cch_device_dynamics:I

    const-string v2, "CCH_DEVICE_DYNAMICS"

    const/16 v14, 0x31

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->Z:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_cch_setting_dynamics:I

    const-string v2, "CCH_SETTINGS_DYNAMICS"

    const/16 v14, 0x32

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->a0:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_identification_changed:I

    const-string v2, "IDENTIFICATION_CHANGED"

    const/16 v14, 0x33

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->b0:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_3rd_party_apps_try_it:I

    const-string v2, "THIRD_PARTY_APPS_TRY_IT"

    const/16 v14, 0x34

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->c0:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_3rd_party_apps_not_show_again:I

    const-string v2, "THIRD_PARTY_APPS_NOT_SHOW_AGAIN"

    const/16 v14, 0x35

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->d0:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_3rd_party_apps_navigate_to_message:I

    const-string v2, "THIRD_PARTY_APPS_MESSAGE_NAV"

    const/16 v14, 0x36

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->e0:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_3rd_party_apps_install:I

    const-string v2, "THIRD_PARTY_APPS_INSTALL"

    const/16 v14, 0x37

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->f0:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_3rd_party_apps_setup:I

    const-string v2, "THIRD_PARTY_APPS_SETUP"

    const/16 v14, 0x38

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->g0:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_3rd_party_apps_blocked:I

    const-string v2, "THIRD_PARTY_APPS_BLOCKED"

    const/16 v14, 0x39

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->h0:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_3rd_party_apps_allowed:I

    const-string v2, "THIRD_PARTY_APPS_ALLOWED"

    const/16 v14, 0x3a

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->i0:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_3rd_party_apps_set_as_default:I

    const-string v2, "THIRD_PARTY_APPS_SETTINGS_AS_DEFAULT"

    const/16 v14, 0x3b

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->j0:Lw91$a;

    new-instance v0, Lw91$a;

    sget v1, Li61;->a_action_3rd_party_apps_not_as_default:I

    const-string v2, "THIRD_PARTY_APPS_SETTINGS_NOT_AS_DEFAULT"

    const/16 v14, 0x3c

    invoke-direct {v0, v2, v14, v1}, Lw91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw91$a;->k0:Lw91$a;

    const/16 v0, 0x3d

    new-array v0, v0, [Lw91$a;

    sget-object v1, Lw91$a;->a:Lw91$a;

    aput-object v1, v0, v3

    sget-object v1, Lw91$a;->b:Lw91$a;

    aput-object v1, v0, v4

    sget-object v1, Lw91$a;->c:Lw91$a;

    aput-object v1, v0, v5

    sget-object v1, Lw91$a;->d:Lw91$a;

    aput-object v1, v0, v6

    sget-object v1, Lw91$a;->f:Lw91$a;

    aput-object v1, v0, v7

    sget-object v1, Lw91$a;->g:Lw91$a;

    aput-object v1, v0, v8

    sget-object v1, Lw91$a;->h:Lw91$a;

    aput-object v1, v0, v9

    sget-object v1, Lw91$a;->j:Lw91$a;

    aput-object v1, v0, v10

    sget-object v1, Lw91$a;->k:Lw91$a;

    aput-object v1, v0, v11

    sget-object v1, Lw91$a;->l:Lw91$a;

    aput-object v1, v0, v12

    sget-object v1, Lw91$a;->m:Lw91$a;

    aput-object v1, v0, v13

    sget-object v1, Lw91$a;->n:Lw91$a;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->o:Lw91$a;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->p:Lw91$a;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->q:Lw91$a;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->r:Lw91$a;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->s:Lw91$a;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->t:Lw91$a;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->u:Lw91$a;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->v:Lw91$a;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->w:Lw91$a;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->x:Lw91$a;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->y:Lw91$a;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->z:Lw91$a;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->A:Lw91$a;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->B:Lw91$a;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->C:Lw91$a;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->D:Lw91$a;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->E:Lw91$a;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->F:Lw91$a;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->G:Lw91$a;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->H:Lw91$a;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->I:Lw91$a;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->J:Lw91$a;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->K:Lw91$a;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->L:Lw91$a;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->M:Lw91$a;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->N:Lw91$a;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->O:Lw91$a;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->P:Lw91$a;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->Q:Lw91$a;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->R:Lw91$a;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->S:Lw91$a;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->T:Lw91$a;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->U:Lw91$a;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->V:Lw91$a;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->W:Lw91$a;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->X:Lw91$a;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->Y:Lw91$a;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->Z:Lw91$a;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->a0:Lw91$a;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->b0:Lw91$a;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->c0:Lw91$a;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->d0:Lw91$a;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->e0:Lw91$a;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->f0:Lw91$a;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->g0:Lw91$a;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->h0:Lw91$a;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->i0:Lw91$a;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->j0:Lw91$a;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    sget-object v1, Lw91$a;->k0:Lw91$a;

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    sput-object v0, Lw91$a;->l0:[Lw91$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw91$a;
    .locals 1

    const-class v0, Lw91$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw91$a;

    return-object p0
.end method

.method public static values()[Lw91$a;
    .locals 1

    sget-object v0, Lw91$a;->l0:[Lw91$a;

    invoke-virtual {v0}, [Lw91$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw91$a;

    return-object v0
.end method
